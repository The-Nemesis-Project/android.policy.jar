.class Lcom/android/internal/policy/impl/MultiPhoneWindow$3;
.super Ljava/lang/Object;
.source "MultiPhoneWindow.java"

# interfaces
.implements Lcom/android/internal/policy/impl/multiwindow/Docking$OnDockingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MultiPhoneWindow;->refreshUI(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V
    .registers 2

    .prologue
    .line 1797
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$3;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 5

    .prologue
    .line 1801
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$3;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/os/SystemVibrator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$3;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIvt:[B
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1500(Lcom/android/internal/policy/impl/MultiPhoneWindow;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$3;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/os/SystemVibrator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_28

    .line 1806
    :goto_19
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$3;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2d

    .line 1807
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$3;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->dismissGuide()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    .line 1811
    :goto_27
    return-void

    .line 1803
    :catch_28
    move-exception v0

    .line 1804
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_19

    .line 1809
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2d
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$3;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$3;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v2

    const/4 v3, 0x0

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;I)V
    invoke-static {v1, v2, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2500(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;I)V

    goto :goto_27
.end method
