.class Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10$1;
.super Ljava/lang/Object;
.source "SPenGestureView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;)V
    .registers 2

    .prologue
    .line 1815
    iput-object p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10$1;->this$1:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    .line 1818
    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10$1;->this$1:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;

    iget-object v2, v2, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    # invokes: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->SaveImage()Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$7200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z

    .line 1819
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1820
    .local v1, "suggestionInfo":Landroid/os/Bundle;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1821
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.category.SUGGESTIONAPP"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1822
    const-string v2, "suggestionType"

    const-string v3, "IMAGE_CROP"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1823
    const-string v2, "srcCropPath"

    const-string v3, "/data/easyclip/crop_image.png"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1824
    const-string v2, "cropPath"

    iget-object v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10$1;->this$1:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;

    iget-object v3, v3, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mImageFilePath:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$7300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1826
    const-string v2, "srcCropPathForAnimation"

    const-string v3, "/data/easyclip/crop_image_anim.png"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1827
    const-string v2, "cropPathForAnimation"

    iget-object v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10$1;->this$1:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;

    iget-object v3, v3, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mImageFilePathForAnimation:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$7400(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1829
    const-string v2, "cropRect"

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10$1;->this$1:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;

    iget-object v4, v4, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordXForIntent:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$6800(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10$1;->this$1:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;

    iget-object v5, v5, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordYForIntent:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$7000(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10$1;->this$1:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;

    iget-object v6, v6, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordXForIntent:I
    invoke-static {v6}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$6700(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10$1;->this$1:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;

    iget-object v7, v7, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordYForIntent:I
    invoke-static {v7}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$6900(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1830
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1832
    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10$1;->this$1:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;

    iget-object v2, v2, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsStartingSuggestionService:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$7500(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z

    move-result v2

    if-nez v2, :cond_b2

    .line 1833
    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10$1;->this$1:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;

    iget-object v2, v2, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1834
    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10$1;->this$1:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;

    iget-object v2, v2, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    # setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsStartingSuggestionService:Z
    invoke-static {v2, v8}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$7502(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z

    .line 1835
    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10$1;->this$1:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;

    iget-object v2, v2, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;
    invoke-static {v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$7600(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1836
    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10$1;->this$1:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;

    iget-object v2, v2, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;
    invoke-static {v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3500(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1837
    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10$1;->this$1:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;

    iget-object v2, v2, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;
    invoke-static {v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$4100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1840
    :cond_b2
    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10$1;->this$1:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;

    iget-object v2, v2, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$7700(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1841
    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10$1;->this$1:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;

    iget-object v2, v2, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$7700(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1842
    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10$1;->this$1:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;

    iget-object v2, v2, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget-object v2, v2, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mToastHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1843
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    .line 1844
    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10$1;->this$1:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;

    iget-object v2, v2, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveCropThread:Z
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$902(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z

    .line 1845
    return-void
.end method
