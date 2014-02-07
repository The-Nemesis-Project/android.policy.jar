.class Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock$1;
.super Landroid/content/BroadcastReceiver;
.source "SViewCoverWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;)V
    .registers 2

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 98
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->DBG:Z
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->access$000()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 99
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive() : intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_20
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 102
    const-string v1, "time-zone"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "tz":Ljava/lang/String;
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive() : ACTION_TIMEZONE_CHANGED : time-zone ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mCalendar:Ljava/util/Calendar;

    .line 106
    .end local v0    # "tz":Ljava/lang/String;
    :cond_58
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;

    # invokes: Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->onTimeChanged()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->access$200(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;)V

    .line 107
    return-void
.end method
