.class Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$13;
.super Ljava/lang/Object;
.source "LensFlareView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cleanUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V
    .registers 2

    .prologue
    .line 1026
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$13;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1029
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$13;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->soundpool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->access$2200(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)Landroid/media/SoundPool;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 1030
    const-string v0, "LensFlare"

    const-string v1, "LensFlare sound : release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$13;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->soundpool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->access$2200(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)Landroid/media/SoundPool;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 1032
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$13;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;

    # setter for: Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->soundpool:Landroid/media/SoundPool;
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->access$2202(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 1034
    :cond_1e
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$13;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;

    # setter for: Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->releaseSoundRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->access$2302(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 1035
    return-void
.end method
