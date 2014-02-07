.class Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$2;
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
    .line 150
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v3, 0x1

    .line 153
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->getHandAdaptableOperationValue()I
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)I

    move-result v1

    if-ne v1, v3, :cond_25

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mIsFlatMode:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 154
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->getOneHandSwitchState()I
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)I

    move-result v0

    .line 155
    .local v0, "oneHandSwitchState":I
    if-ne v0, v3, :cond_26

    .line 156
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;->Left:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->movePatternLock(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;Z)V
    invoke-static {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;Z)V

    .line 157
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    # setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLeftPressed:Z
    invoke-static {v1, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$502(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;Z)Z

    .line 163
    .end local v0    # "oneHandSwitchState":I
    :cond_25
    :goto_25
    return-void

    .line 158
    .restart local v0    # "oneHandSwitchState":I
    :cond_26
    const/4 v1, 0x2

    if-ne v0, v1, :cond_25

    .line 159
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    const/4 v2, 0x0

    # setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLeftPressed:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$502(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;Z)Z

    .line 160
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;->Right:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->movePatternLock(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;Z)V
    invoke-static {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;Z)V

    goto :goto_25
.end method
