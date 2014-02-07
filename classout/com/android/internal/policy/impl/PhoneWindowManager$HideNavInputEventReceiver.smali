.class final Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "HideNavInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .registers 4
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 3603
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 3604
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 3605
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .registers 16
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x2

    const/4 v6, 0x0

    .line 3609
    const/4 v2, 0x0

    .line 3610
    .local v2, "handled":Z
    const/4 v1, 0x0

    .line 3611
    .local v1, "changed":Z
    const/4 v5, 0x0

    .line 3613
    .local v5, "spencroped":Z
    :try_start_6
    instance-of v7, p1, Landroid/view/MotionEvent;

    if-eqz v7, :cond_6f

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v7

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_6f

    .line 3615
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v3, v0

    .line 3616
    .local v3, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_61

    .line 3619
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$700(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_23
    .catchall {:try_start_6 .. :try_end_23} :catchall_8b

    .line 3625
    :try_start_23
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v8, v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    or-int/lit8 v8, v8, 0x2

    or-int/lit8 v8, v8, 0x1

    or-int/lit8 v4, v8, 0x4

    .line 3629
    .local v4, "newVal":I
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v8, v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    if-eq v8, v4, :cond_38

    .line 3630
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput v4, v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    .line 3631
    const/4 v1, 0x1

    .line 3636
    :cond_38
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v8, v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    or-int/lit8 v4, v8, 0x2

    .line 3638
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v8, v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    if-eq v8, v4, :cond_57

    .line 3639
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput v4, v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    .line 3640
    const/4 v1, 0x1

    .line 3641
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v8, v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver$1;

    invoke-direct {v9, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;)V

    const-wide/16 v10, 0x3e8

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3652
    :cond_57
    monitor-exit v7
    :try_end_58
    .catchall {:try_start_23 .. :try_end_58} :catchall_88

    .line 3653
    if-eqz v1, :cond_61

    .line 3654
    :try_start_5a
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v7, v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->reevaluateStatusBarVisibility()V

    .line 3657
    .end local v4    # "newVal":I
    :cond_61
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v7

    if-ne v7, v12, :cond_a5

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getButtonState()I
    :try_end_6b
    .catchall {:try_start_5a .. :try_end_6b} :catchall_8b

    move-result v7

    if-ne v7, v12, :cond_a5

    const/4 v5, 0x1

    .line 3660
    .end local v3    # "motionEvent":Landroid/view/MotionEvent;
    :cond_6f
    :goto_6f
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 3661
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    if-eqz v6, :cond_87

    if-nez v1, :cond_7c

    if-eqz v5, :cond_87

    .line 3662
    :cond_7c
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$FakeWindow;->dismiss()V

    .line 3663
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-object v13, v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    .line 3666
    :cond_87
    return-void

    .line 3652
    .restart local v3    # "motionEvent":Landroid/view/MotionEvent;
    :catchall_88
    move-exception v6

    :try_start_89
    monitor-exit v7
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_88

    :try_start_8a
    throw v6
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_8b

    .line 3660
    .end local v3    # "motionEvent":Landroid/view/MotionEvent;
    :catchall_8b
    move-exception v6

    invoke-virtual {p0, p1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 3661
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v7, v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    if-eqz v7, :cond_a4

    if-nez v1, :cond_99

    if-eqz v5, :cond_a4

    .line 3662
    :cond_99
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v7, v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$FakeWindow;->dismiss()V

    .line 3663
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-object v13, v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    :cond_a4
    throw v6

    .restart local v3    # "motionEvent":Landroid/view/MotionEvent;
    :cond_a5
    move v5, v6

    .line 3657
    goto :goto_6f
.end method
