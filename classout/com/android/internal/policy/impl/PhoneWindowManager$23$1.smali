.class Lcom/android/internal/policy/impl/PhoneWindowManager$23$1;
.super Landroid/os/Handler;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager$23;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$23;

.field final synthetic val$myConn:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager$23;Landroid/os/Looper;Landroid/content/ServiceConnection;)V
    .registers 4
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 7211
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$23$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$23;

    iput-object p3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$23$1;->val$myConn:Landroid/content/ServiceConnection;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 7214
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$23$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$23;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$23;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7215
    :try_start_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$23$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$23;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$23;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$23$1;->val$myConn:Landroid/content/ServiceConnection;

    if-ne v0, v2, :cond_36

    .line 7216
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$23$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$23;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$23;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$23$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$23;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager$23;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 7217
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$23$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$23;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$23;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 7218
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$23$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$23;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$23;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$23$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$23;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager$23;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7220
    :cond_36
    monitor-exit v1

    .line 7221
    return-void

    .line 7220
    :catchall_38
    move-exception v0

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_7 .. :try_end_3a} :catchall_38

    throw v0
.end method
