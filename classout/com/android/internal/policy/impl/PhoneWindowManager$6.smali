.class Lcom/android/internal/policy/impl/PhoneWindowManager$6;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 1484
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1487
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleTapPending:Z

    if-eqz v2, :cond_1c

    .line 1488
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleTapPending:Z

    .line 1492
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isBlockHomeKey()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1493
    const-string v2, "WindowManager"

    const-string v3, "Home key is blocked"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    :cond_1c
    :goto_1c
    return-void

    .line 1501
    :cond_1d
    :try_start_1d
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1502
    .local v1, "phoneServ":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_39

    .line 1503
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 1504
    const-string v2, "WindowManager"

    const-string v3, "Home key is blocked by ringing"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_30} :catch_31

    goto :goto_1c

    .line 1508
    .end local v1    # "phoneServ":Lcom/android/internal/telephony/ITelephony;
    :catch_31
    move-exception v0

    .line 1509
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "RemoteException from getTelephonyService()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1512
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_39
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isVoIPRinging()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 1513
    const-string v2, "WindowManager"

    const-string v3, "Home key is blocked by VoIP ringing"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 1517
    :cond_49
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchHomeFromHotKey()V

    goto :goto_1c
.end method
