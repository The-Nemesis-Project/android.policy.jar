.class Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer$1;
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
    .line 578
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 581
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "postDelayed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->clearWaterColor()V

    .line 585
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->isRestrictCPUClock:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 587
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->releaseBooster(I)V

    .line 590
    :cond_1a
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->isRestrictGPUFreq:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->access$100(Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 592
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->releaseBooster(I)V

    .line 594
    :cond_28
    return-void
.end method
