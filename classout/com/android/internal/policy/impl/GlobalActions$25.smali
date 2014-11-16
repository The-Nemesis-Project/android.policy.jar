.class Lcom/android/internal/policy/impl/GlobalActions$25;
.super Landroid/telephony/PhoneStateListener;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;)V
    .registers 2

    .prologue
    .line 2444
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$25;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 7
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v4, 0x3

    .line 2447
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$25;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mHasTelephony:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$1300(Lcom/android/internal/policy/impl/GlobalActions;)Z

    move-result v1

    if-eqz v1, :cond_b

    if-nez p1, :cond_34

    .line 2448
    :cond_b
    const-string v1, "GlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHasTelephony : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$25;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mHasTelephony:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlobalActions;->access$1300(Lcom/android/internal/policy/impl/GlobalActions;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2466
    :goto_33
    return-void

    .line 2459
    :cond_34
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-ne v1, v4, :cond_7a

    const/4 v0, 0x1

    .line 2462
    .local v0, "inAirplaneMode":Z
    :goto_3b
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$25;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    if-eqz v0, :cond_7c

    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_41
    # setter for: Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;
    invoke-static {v2, v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$1602(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 2463
    sget-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v1, :cond_70

    .line 2464
    const-string v1, "GlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceStateChanged inAirplaneMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mAirplaneState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$25;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlobalActions;->access$1600(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2465
    :cond_70
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$25;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$300(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_33

    .line 2459
    .end local v0    # "inAirplaneMode":Z
    :cond_7a
    const/4 v0, 0x0

    goto :goto_3b

    .line 2462
    .restart local v0    # "inAirplaneMode":Z
    :cond_7c
    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_41
.end method
