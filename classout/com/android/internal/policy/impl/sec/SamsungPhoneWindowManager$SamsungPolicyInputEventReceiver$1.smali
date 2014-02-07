.class Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyInputEventReceiver$1;
.super Lcom/android/internal/policy/impl/sec/StatusBarWindowController;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyInputEventReceiver;->onInputEvent(Landroid/view/InputEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyInputEventReceiver;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyInputEventReceiver;Landroid/content/Context;)V
    .registers 3
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 1911
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyInputEventReceiver$1;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyInputEventReceiver;

    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onHideStatusBarOnNormalScreen(Z)V
    .registers 5
    .param p1, "hide"    # Z

    .prologue
    .line 1925
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1c

    .line 1926
    const-string v0, "StatusBarWindowController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHideStatusBarOnNormalScreen : hide = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    :cond_1c
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyInputEventReceiver$1;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyInputEventReceiver;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->setStatusBarHideOnNormalScreen(ZZ)V

    .line 1929
    return-void
.end method

.method public onShowStatusBarOnFullScreen(Z)V
    .registers 5
    .param p1, "show"    # Z

    .prologue
    .line 1913
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1c

    .line 1914
    const-string v0, "StatusBarWindowController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShowStatusBarOnFullScreen : show = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1916
    :cond_1c
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyInputEventReceiver$1;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyInputEventReceiver;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->setStatusBarShowOnFullScreen(ZZ)V

    .line 1917
    return-void
.end method

.method public setStatusBarHidingOnFullScreen(Z)V
    .registers 5
    .param p1, "hiding"    # Z

    .prologue
    .line 1919
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1c

    .line 1920
    const-string v0, "StatusBarWindowController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStatusBarHidingOnFullScreen : hiding = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    :cond_1c
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyInputEventReceiver$1;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyInputEventReceiver;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->setStatusBarHidingStateOnFullScreen(Z)V

    .line 1923
    return-void
.end method
