.class Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer$3;
.super Ljava/lang/Object;
.source "WaterColorRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->showUnlockAffordance(JLandroid/graphics/Rect;)V
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
    .line 661
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 665
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v3, "onTouchEvent(0, 1, MotionEvent.ACTION_DOWN)"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 667
    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mJniWaterColor:Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->access$400()Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;

    iget-object v4, v3, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->pointer_xpos:[I

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;

    iget-object v5, v3, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->pointer_ypos:[I

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;->onTouchEvent(III[I[I)V

    .line 668
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mDefaultRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->access$502(Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 669
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;

    # invokes: Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->setFalseDefaultEffectFlag()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->access$600(Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;)V

    .line 670
    return-void
.end method
