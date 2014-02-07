.class public final Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SamsungPolicyInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .registers 4
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1893
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    .line 1894
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 1895
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .registers 10
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 1899
    const/4 v3, 0x0

    .line 1900
    .local v3, "handled":Z
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getFocusedWindow()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v2

    .line 1901
    .local v2, "focusedWindow":Landroid/view/WindowManagerPolicy$WindowState;
    if-eqz v2, :cond_55

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1903
    .local v1, "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_f
    if-eqz v1, :cond_57

    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7d0

    if-ne v5, v6, :cond_57

    const/4 v4, 0x1

    .line 1907
    .local v4, "isStatusBarWindow":Z
    :goto_18
    if-eqz v1, :cond_51

    :try_start_1a
    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v5, v5, 0x100

    if-nez v5, :cond_51

    .line 1908
    instance-of v5, p1, Landroid/view/MotionEvent;

    if-eqz v5, :cond_51

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_51

    .line 1910
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarWindowController:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    if-nez v5, :cond_3f

    .line 1911
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    new-instance v6, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyInputEventReceiver$1;

    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v7, v7, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v6, p0, v7}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyInputEventReceiver$1;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyInputEventReceiver;Landroid/content/Context;)V

    iput-object v6, v5, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarWindowController:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    .line 1932
    :cond_3f
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v6, v5, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_44
    .catchall {:try_start_1a .. :try_end_44} :catchall_5c

    .line 1933
    :try_start_44
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v7, v5, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarWindowController:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v5, v0

    invoke-virtual {v7, v5, v4}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->onInputPointerEvent(Landroid/view/MotionEvent;Z)V

    .line 1935
    const/4 v3, 0x1

    .line 1936
    monitor-exit v6
    :try_end_51
    .catchall {:try_start_44 .. :try_end_51} :catchall_59

    .line 1940
    :cond_51
    invoke-virtual {p0, p1, v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 1942
    return-void

    .line 1901
    .end local v1    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "isStatusBarWindow":Z
    :cond_55
    const/4 v1, 0x0

    goto :goto_f

    .line 1903
    .restart local v1    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_57
    const/4 v4, 0x0

    goto :goto_18

    .line 1936
    .restart local v4    # "isStatusBarWindow":Z
    :catchall_59
    move-exception v5

    :try_start_5a
    monitor-exit v6
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    :try_start_5b
    throw v5
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5c

    .line 1940
    :catchall_5c
    move-exception v5

    invoke-virtual {p0, p1, v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v5
.end method
