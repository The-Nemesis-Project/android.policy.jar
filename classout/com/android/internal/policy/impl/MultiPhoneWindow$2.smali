.class Lcom/android/internal/policy/impl/MultiPhoneWindow$2;
.super Landroid/content/BroadcastReceiver;
.source "MultiPhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MultiPhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V
    .registers 2

    .prologue
    .line 612
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$2;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 615
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.action.NOTIFY_STOP_DRAG_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 616
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$2;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # setter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDragMode:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$502(Lcom/android/internal/policy/impl/MultiPhoneWindow;Z)Z

    .line 619
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$2;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHeader:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 620
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$2;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHeader:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->startDragMode(Z)V

    .line 623
    :cond_23
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.action.NOTIFY_START_DRAG_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 624
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$2;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    const/4 v1, 0x1

    # setter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDragMode:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$502(Lcom/android/internal/policy/impl/MultiPhoneWindow;Z)Z

    .line 626
    :cond_35
    return-void
.end method
