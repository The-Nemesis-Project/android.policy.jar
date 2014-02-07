.class Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer$2;
.super Ljava/lang/Object;
.source "WaterColorRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->cleanUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;)V
    .registers 2

    .prologue
    .line 598
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer$2;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 601
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer$2;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->access$200(Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;)Landroid/media/SoundPool;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 602
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "WaterColor sound : release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer$2;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->access$200(Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;)Landroid/media/SoundPool;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 604
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer$2;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;

    # setter for: Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->access$202(Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 606
    :cond_1e
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer$2;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;

    # setter for: Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->releaseSoundRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->access$302(Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 607
    return-void
.end method
