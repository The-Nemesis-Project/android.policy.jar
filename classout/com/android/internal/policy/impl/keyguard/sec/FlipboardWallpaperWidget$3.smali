.class Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget$3;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
.source "FlipboardWallpaperWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;)V
    .registers 2

    .prologue
    .line 765
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFlipboardDataUpdated()V
    .registers 4

    .prologue
    .line 768
    const-string v1, "FlipboardWallpaperWidget"

    const-string v2, "onFlipboardDataUpdated"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    const/4 v0, 0x0

    .line 773
    .local v0, "needToUpdateWallpaper":Z
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFlipboardItemList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->access$400(Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFlipboardItemList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->access$400(Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 774
    :cond_1c
    const/4 v0, 0x1

    .line 776
    :cond_1d
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->access$500(Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getFlipboardItemList()Ljava/util/ArrayList;

    move-result-object v2

    # setter for: Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFlipboardItemList:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->access$402(Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 777
    if-eqz v0, :cond_37

    .line 778
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->setLockScreenWallpaper()V

    .line 779
    :cond_37
    return-void
.end method
