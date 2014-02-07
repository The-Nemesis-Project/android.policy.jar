.class Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$10;
.super Ljava/lang/Object;
.source "KeyguardPatternView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)V
    .registers 2

    .prologue
    .line 741
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$10;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 744
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_42

    .line 758
    :goto_9
    return-void

    .line 746
    :pswitch_a
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$10;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;->Left:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->movePatternLock(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;Z)V

    .line 747
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$10;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    # setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLeftPressed:Z
    invoke-static {v0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$502(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;Z)Z

    .line 748
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$10;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$3100(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "onehand_operation_left_is_pressed"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_9

    .line 751
    :pswitch_26
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$10;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;->Right:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->movePatternLock(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;Z)V

    .line 752
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$10;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    # setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLeftPressed:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$502(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;Z)Z

    .line 753
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$10;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$3200(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "onehand_operation_left_is_pressed"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_9

    .line 744
    :pswitch_data_42
    .packed-switch 0x10203ba
        :pswitch_a
        :pswitch_26
    .end packed-switch
.end method
