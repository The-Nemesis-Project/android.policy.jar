.class Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$3;
.super Landroid/database/ContentObserver;
.source "KeyguardPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;Landroid/os/Handler;)V
    .registers 3
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5
    .param p1, "selfChange"    # Z

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 169
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->isOnehandMode()Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 170
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->isOnehandAnyScreenMode()Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 171
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->stopHandAdaptableObserver()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)V

    .line 172
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 173
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 175
    :cond_29
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 176
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 178
    :cond_3a
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mOnehandLockPattern:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 179
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mOnehandLockPattern:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 193
    :cond_4d
    :goto_4d
    return-void

    .line 182
    :cond_4e
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->getHandAdaptableOperationValue()I
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5d

    .line 183
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->startHandAdaptableObserver()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$1200(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)V

    goto :goto_4d

    .line 185
    :cond_5d
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLeftPressed:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 186
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;->Left:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->movePatternLock(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;Z)V

    goto :goto_4d

    .line 188
    :cond_6d
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;->Right:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->movePatternLock(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;Z)V

    goto :goto_4d
.end method
