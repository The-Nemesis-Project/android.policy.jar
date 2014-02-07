.class Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather$1;
.super Landroid/content/BroadcastReceiver;
.source "SViewCoverWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;)V
    .registers 2

    .prologue
    .line 838
    iput-object p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 842
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 843
    .local v0, "action":Ljava/lang/String;
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Weather changed"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->access$900()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->access$1000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->access$1100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 848
    :cond_2b
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->updateWeatherInfo()V

    .line 851
    :cond_30
    const-string v1, "kweather"

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->mCPName:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->access$1200()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_83

    .line 852
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_83

    .line 857
    :cond_64
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Weather, KWEATHER action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->updateWeatherInfo()V

    .line 861
    :cond_83
    return-void
.end method
