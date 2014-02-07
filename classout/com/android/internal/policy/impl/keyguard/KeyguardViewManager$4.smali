.class Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$4;
.super Ljava/lang/Object;
.source "KeyguardViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->hide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

.field final synthetic val$lastView:Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;)V
    .registers 3

    .prologue
    .line 701
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$4;->val$lastView:Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 704
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    monitor-enter v1

    .line 705
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$4;->val$lastView:Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->cleanUp()V

    .line 706
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardViewFrame:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$4;->val$lastView:Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 707
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mIsHideBackgroundView:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$1200(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 708
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$1300(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->hideBackgroundView()V

    .line 709
    :cond_28
    monitor-exit v1

    .line 710
    return-void

    .line 709
    :catchall_2a
    move-exception v0

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v0
.end method
