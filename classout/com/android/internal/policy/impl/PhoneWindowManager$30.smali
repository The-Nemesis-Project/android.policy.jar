.class Lcom/android/internal/policy/impl/PhoneWindowManager$30;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .registers 2

    .prologue
    .line 8247
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$30;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 8249
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 8250
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.sec.android.intent.action.PAUSE_WATCH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 8251
    const-string v1, "WindowManager"

    const-string v2, "Premium watch pause received."

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8253
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$30;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWatchDisplayed:Z

    if-eqz v1, :cond_1e

    .line 8254
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$30;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWatchDisplayed:Z

    .line 8256
    :cond_1e
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$30;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_30

    .line 8257
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$30;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 8260
    :cond_30
    return-void
.end method
