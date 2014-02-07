.class Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;
.super Landroid/database/ContentObserver;
.source "KeyguardEffectView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;Landroid/os/Handler;)V
    .registers 3
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 8
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/16 v3, 0x12f2

    const/16 v4, 0x12f1

    const/16 v2, 0x12f0

    .line 148
    const-string v0, "lockscreen_wallpaper"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 149
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 150
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 151
    :cond_27
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 207
    :cond_3a
    :goto_3a
    return-void

    .line 152
    :cond_3b
    const-string v0, "lockscreen_ripple_effect"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 153
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 154
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 155
    :cond_5c
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3a

    .line 156
    :cond_70
    const-string v0, "lockscreen_wallpaper_path"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_88

    const-string v0, "lockscreen_wallpaper_path_2"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14a

    .line 158
    :cond_88
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 159
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper_path"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mWallpaperPath:Ljava/lang/String;

    .line 162
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->isMultiSIMDevice()Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 164
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getCurrentWallpaper(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mWallpaperPath:Ljava/lang/String;

    .line 165
    const-string v0, "KeyguardBackgroundView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MultiSim Device wallpaperPath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mWallpaperPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_d0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mWallpaperPath:Ljava/lang/String;

    if-eqz v0, :cond_104

    .line 169
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mFileObserver:Landroid/os/FileObserver;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$400(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/os/FileObserver;

    move-result-object v0

    if-eqz v0, :cond_e7

    .line 170
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mFileObserver:Landroid/os/FileObserver;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$400(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/os/FileObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 171
    :cond_e7
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mFileObserver:Landroid/os/FileObserver;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$402(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;Landroid/os/FileObserver;)Landroid/os/FileObserver;

    .line 172
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3$1;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3$1;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;Ljava/lang/String;)V

    # setter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mFileObserver:Landroid/os/FileObserver;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$402(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;Landroid/os/FileObserver;)Landroid/os/FileObserver;

    .line 195
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mFileObserver:Landroid/os/FileObserver;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$400(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/os/FileObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 197
    :cond_104
    const-string v0, "KeyguardBackgroundView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWallpaperPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mWallpaperPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_135

    .line 199
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 200
    :cond_135
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_3a

    .line 202
    :cond_14a
    const-string v0, "longlife_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 203
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_16b

    .line 204
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 205
    :cond_16b
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_3a
.end method
