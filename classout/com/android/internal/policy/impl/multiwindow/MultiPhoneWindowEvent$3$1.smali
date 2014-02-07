.class Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$3$1;
.super Ljava/lang/Object;
.source "MultiPhoneWindowEvent.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$3;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$3;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$3;)V
    .registers 2

    .prologue
    .line 762
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$3$1;->this$1:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$3;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 764
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$3$1;->this$1:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$3;

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mwm:Landroid/sec/multiwindow/impl/MultiWindowManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$600(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/sec/multiwindow/impl/MultiWindowManager;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 765
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$3$1;->this$1:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$3;

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mwm:Landroid/sec/multiwindow/impl/MultiWindowManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$600(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/sec/multiwindow/impl/MultiWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$3$1;->this$1:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$3;

    iget-object v1, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    iget-object v1, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowServiceCallback:Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback$Stub;

    invoke-virtual {v0, v1}, Landroid/sec/multiwindow/impl/MultiWindowManager;->unRegisterCallback(Landroid/os/IBinder;)Z

    .line 767
    :cond_1b
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 768
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 769
    return-void
.end method
