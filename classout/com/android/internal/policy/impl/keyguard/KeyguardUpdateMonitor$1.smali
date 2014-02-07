.class Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;
.super Landroid/os/Handler;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V
    .registers 2

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 191
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_c0

    .line 253
    :goto_5
    return-void

    .line 193
    :sswitch_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleTimeUpdate()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V

    goto :goto_5

    .line 196
    :sswitch_c
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleBatteryUpdate(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    goto :goto_5

    .line 199
    :sswitch_16
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleCarrierInfoUpdate()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V

    goto :goto_5

    .line 202
    :sswitch_1c
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleSimStateChange(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;)V
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;)V

    goto :goto_5

    .line 205
    :sswitch_26
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleRingerModeChange(I)V

    goto :goto_5

    .line 208
    :sswitch_2e
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handlePhoneStateChanged(Ljava/lang/String;)V

    goto :goto_5

    .line 211
    :sswitch_38
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleClockVisibilityChanged()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V

    goto :goto_5

    .line 214
    :sswitch_3e
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleDeviceProvisioned()V

    goto :goto_5

    .line 217
    :sswitch_44
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleDevicePolicyManagerStateChanged()V

    goto :goto_5

    .line 220
    :sswitch_4a
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IRemoteCallback;

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleUserSwitching(ILandroid/os/IRemoteCallback;)V

    goto :goto_5

    .line 223
    :sswitch_56
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleUserSwitchComplete(I)V

    goto :goto_5

    .line 226
    :sswitch_5e
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleAirplaneUpdate(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;I)V

    goto :goto_5

    .line 229
    :sswitch_66
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleUserRemoved(I)V

    goto :goto_5

    .line 232
    :sswitch_6e
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleKeyguardVisibilityChanged(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;I)V

    goto :goto_5

    .line 235
    :sswitch_76
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleBootCompleted()V

    goto :goto_5

    .line 238
    :sswitch_7c
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleGoToUnlockScreen()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V

    goto :goto_5

    .line 241
    :sswitch_82
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v0, p1, Landroid/os/Message;->arg2:I

    if-eqz v0, :cond_95

    const/4 v0, 0x1

    move v1, v0

    :goto_8c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleSetGenerationId(IZLandroid/app/PendingIntent;)V

    goto/16 :goto_5

    :cond_95
    const/4 v0, 0x0

    move v1, v0

    goto :goto_8c

    .line 244
    :sswitch_98
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleSetPlaybackState(IIJ)V

    goto/16 :goto_5

    .line 247
    :sswitch_ab
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleUserInfoChanged(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;I)V

    goto/16 :goto_5

    .line 250
    :sswitch_b4
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleFlipboardDataUpdated(Landroid/os/Bundle;)V
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Landroid/os/Bundle;)V

    goto/16 :goto_5

    .line 191
    nop

    :sswitch_data_c0
    .sparse-switch
        0x12d -> :sswitch_6
        0x12e -> :sswitch_c
        0x12f -> :sswitch_16
        0x130 -> :sswitch_1c
        0x131 -> :sswitch_26
        0x132 -> :sswitch_2e
        0x133 -> :sswitch_38
        0x134 -> :sswitch_3e
        0x135 -> :sswitch_44
        0x136 -> :sswitch_4a
        0x137 -> :sswitch_66
        0x138 -> :sswitch_6e
        0x139 -> :sswitch_76
        0x13a -> :sswitch_56
        0x13b -> :sswitch_82
        0x13c -> :sswitch_98
        0x13d -> :sswitch_ab
        0x13e -> :sswitch_5e
        0x1f5 -> :sswitch_7c
        0x1f7 -> :sswitch_b4
    .end sparse-switch
.end method
