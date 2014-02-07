.class Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;
.super Landroid/content/BroadcastReceiver;
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
    .line 307
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 310
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 313
    .local v2, "action":Ljava/lang/String;
    const-string v11, "android.intent.action.TIME_TICK"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1c

    const-string v11, "android.intent.action.TIME_SET"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1c

    const-string v11, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_36

    .line 316
    :cond_1c
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0x12d

    invoke-virtual {v12, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 385
    :cond_35
    :goto_35
    return-void

    .line 317
    :cond_36
    const-string v11, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_93

    .line 318
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v11

    if-eqz v11, :cond_70

    .line 320
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v0, p2

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getTelephonyPlmnFromDualMode(Landroid/content/Intent;)V
    invoke-static {v11, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Landroid/content/Intent;)V

    .line 321
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v0, p2

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getTelephonySpnFromDualMode(Landroid/content/Intent;)V
    invoke-static {v11, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1200(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Landroid/content/Intent;)V

    .line 326
    :goto_56
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0x12f

    invoke-virtual {v12, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_35

    .line 323
    :cond_70
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v0, p2

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getTelephonyPlmnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    invoke-static {v12, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1400(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v12

    # setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;
    invoke-static {v11, v12}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1302(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 324
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v0, p2

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getTelephonySpnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    invoke-static {v12, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1600(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v12

    # setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;
    invoke-static {v11, v12}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1502(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    goto :goto_56

    .line 327
    :cond_93
    const-string v11, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_df

    .line 328
    const-string v11, "status"

    const/4 v12, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 329
    .local v10, "status":I
    const-string v11, "plugged"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 330
    .local v8, "plugged":I
    const-string v11, "level"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 331
    .local v5, "level":I
    const-string v11, "health"

    const/4 v12, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 332
    .local v4, "health":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x12e

    new-instance v13, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    invoke-direct {v13, v10, v5, v8, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;-><init>(IIII)V

    invoke-virtual {v11, v12, v13}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 334
    .local v6, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_35

    .line 335
    .end local v4    # "health":I
    .end local v5    # "level":I
    .end local v6    # "msg":Landroid/os/Message;
    .end local v8    # "plugged":I
    .end local v10    # "status":I
    :cond_df
    const-string v11, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_106

    .line 340
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0x130

    invoke-static/range {p2 .. p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;->fromIntent(Landroid/content/Intent;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_35

    .line 342
    :cond_106
    const-string v11, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_133

    .line 343
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0x131

    const-string v14, "android.media.EXTRA_RINGER_MODE"

    const/4 v15, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_35

    .line 345
    :cond_133
    const-string v11, "android.intent.action.PHONE_STATE"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15e

    .line 346
    const-string v11, "state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 347
    .local v9, "state":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0x132

    invoke-virtual {v12, v13, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_35

    .line 348
    .end local v9    # "state":Ljava/lang/String;
    :cond_15e
    const-string v11, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_181

    .line 350
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0x135

    invoke-virtual {v12, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_35

    .line 351
    :cond_181
    const-string v11, "android.intent.action.USER_REMOVED"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1ae

    .line 352
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0x137

    const-string v14, "android.intent.extra.user_handle"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_35

    .line 354
    :cond_1ae
    const-string v11, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1d1

    .line 355
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0x139

    invoke-virtual {v12, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_35

    .line 356
    :cond_1d1
    const-string v11, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2b7

    .line 358
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1700(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "airplane_mode_on"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 359
    .local v3, "airPlaneEnabled":I
    const-string v11, "KeyguardUpdateMonitor"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Received  ACTION_AIRPLANE_MODE_CHANGED = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x13e

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v3, v13}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    .line 361
    .restart local v6    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 363
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isDualModeDevice()I

    move-result v11

    if-eqz v11, :cond_35

    .line 364
    const-string v11, "gsm.sim.currentcardstatus"

    const-string v12, "0"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 366
    .local v1, "CardStatus":I
    const/4 v11, 0x2

    if-ne v1, v11, :cond_35

    const/4 v11, 0x1

    if-ne v3, v11, :cond_35

    .line 367
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1700(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "switching.slot"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    # setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSlotSwitching:I
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1802(I)I

    .line 368
    const-string v11, "KeyguardUpdateMonitor"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "AIRPLANE_MODE  mSlotSwitching = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSlotSwitching:I
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1800()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSlotSwitching:I
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1800()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_293

    .line 370
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1700(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x10401d9

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    # setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSlotSwitchingPlmnSlot2:Ljava/lang/CharSequence;
    invoke-static {v12, v13}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$2002(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    # setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmnSlot2:Ljava/lang/CharSequence;
    invoke-static {v11, v12}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1902(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    goto/16 :goto_35

    .line 373
    :cond_293
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1700(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x10401d9

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    # setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmnSlot2:Ljava/lang/CharSequence;
    invoke-static {v12, v13}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1902(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    # setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;
    invoke-static {v11, v12}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1302(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    goto/16 :goto_35

    .line 377
    .end local v1    # "CardStatus":I
    .end local v3    # "airPlaneEnabled":I
    .end local v6    # "msg":Landroid/os/Message;
    :cond_2b7
    const-string v11, "com.samsung.pen.INSERT"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2e5

    .line 378
    const-string v11, "penInsert"

    const/4 v12, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 379
    .local v7, "penInsert":Z
    if-nez v7, :cond_35

    .line 380
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0x1f5

    invoke-virtual {v12, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_35

    .line 382
    .end local v7    # "penInsert":Z
    :cond_2e5
    const-string v11, "com.samsung.fb.DATA_UPDATED"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_35

    .line 383
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0x1f7

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_35
.end method
