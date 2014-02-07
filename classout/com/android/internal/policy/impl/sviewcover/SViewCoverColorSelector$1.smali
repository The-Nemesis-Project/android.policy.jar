.class Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector$1;
.super Ljava/lang/Object;
.source "SViewCoverColorSelector.java"

# interfaces
.implements Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;)V
    .registers 2

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorChanged(I)V
    .registers 6
    .param p1, "color"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->mSViewCoverManagerCallback:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SViewCoverManagerCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->access$000(Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;)Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SViewCoverManagerCallback;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->mSViewCoverManagerCallback:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SViewCoverManagerCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->access$000(Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;)Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SViewCoverManagerCallback;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 81
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->mSViewCoverManagerCallback:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SViewCoverManagerCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->access$000(Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;)Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SViewCoverManagerCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SViewCoverManagerCallback;->onPagerTouchDowned()V

    .line 82
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->access$100(Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 84
    :cond_27
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;

    # setter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->mCurrentCoverBackgroundColor:I
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->access$202(Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;I)I

    .line 85
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->mTargetView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->access$300(Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->mColorPickerBackground:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->access$400(Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_65

    .line 86
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->mCurrentCoverBackgroundColor:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->access$200(Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->setBackgroundColor(I)V

    .line 87
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->mCurrentCoverBackgroundColor:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->access$200(Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;)I

    move-result v0

    const/high16 v1, -0x1000000

    if-ne v0, v1, :cond_66

    .line 88
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->mCoverPatternImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->access$500(Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 92
    :goto_5c
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->mTargetView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->access$300(Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 94
    :cond_65
    return-void

    .line 90
    :cond_66
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->mCoverPatternImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->access$500(Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    goto :goto_5c
.end method
