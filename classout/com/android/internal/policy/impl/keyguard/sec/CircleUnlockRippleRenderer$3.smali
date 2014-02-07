.class Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer$3;
.super Ljava/lang/Object;
.source "CircleUnlockRippleRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->cleanUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;)V
    .registers 2

    .prologue
    .line 1919
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1922
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "postDelayed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->clearAllEffect()V

    .line 1926
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isRestrictCPUClock:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->access$600(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1928
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->releaseBooster(I)V

    .line 1931
    :cond_1a
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isRestrictGPUFreq:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->access$700(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1933
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->releaseBooster(I)V

    .line 1935
    :cond_28
    return-void
.end method
