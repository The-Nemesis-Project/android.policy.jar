.class Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector$2;
.super Ljava/lang/Object;
.source "SViewCoverColorSelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 98
    iput-object p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector$2;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector$2;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->mSViewCoverManagerCallback:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SViewCoverManagerCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->access$000(Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;)Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SViewCoverManagerCallback;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector$2;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->mSViewCoverManagerCallback:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SViewCoverManagerCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->access$000(Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;)Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SViewCoverManagerCallback;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 103
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector$2;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->mSViewCoverManagerCallback:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SViewCoverManagerCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->access$000(Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;)Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SViewCoverManagerCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SViewCoverManagerCallback;->onPagerTouchDowned()V

    .line 104
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector$2;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->access$100(Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 106
    :cond_27
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector$2;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->mControlView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->access$600(Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector$2;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector$2;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->access$700(Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "s_vew_cover_background_color"

    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector$2;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->mCurrentCoverBackgroundColor:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->access$200(Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 109
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector$2;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->access$800(Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "s_vew_cover_color"

    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector$2;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->mCurrentCoverColor:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->access$900(Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 110
    return-void
.end method
