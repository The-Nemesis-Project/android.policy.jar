.class Lcom/android/internal/policy/impl/GlobalActions$3;
.super Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions;->createDialog()Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;IIIII)V
    .registers 13
    .param p2, "x0"    # I
    .param p3, "x1"    # I
    .param p4, "x2"    # I
    .param p5, "x3"    # I
    .param p6, "x4"    # I

    .prologue
    .line 668
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;-><init>(IIIII)V

    return-void
.end method


# virtual methods
.method protected changeStateFromPress(Z)V
    .registers 4
    .param p1, "buttonOn"    # Z

    .prologue
    .line 755
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mHasTelephony:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$1300(Lcom/android/internal/policy/impl/GlobalActions;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 762
    :cond_8
    :goto_8
    return-void

    .line 757
    :cond_9
    const-string v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 759
    if-eqz p1, :cond_23

    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->TurningOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_19
    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 760
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    # setter for: Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$1602(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_8

    .line 759
    :cond_23
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->TurningOff:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_19
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 810
    invoke-super {p0}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public onPress()V
    .registers 11

    .prologue
    const v6, 0x10401eb

    const v7, 0x10401ea

    const v4, 0x10401e5

    const v3, 0x10401e4

    const v5, 0x10401e3

    .line 671
    sget-boolean v2, Lcom/android/internal/policy/impl/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v2, :cond_1a

    .line 672
    const-string v2, "GlobalActions"

    const-string v8, "in onPress of AirplaneMode"

    invoke-static {v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :cond_1a
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    const-string v8, "VZW"

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mSalesCode:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$1100()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    # setter for: Lcom/android/internal/policy/impl/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z
    invoke-static {v2, v8}, Lcom/android/internal/policy/impl/GlobalActions;->access$1002(Lcom/android/internal/policy/impl/GlobalActions;Z)Z

    .line 676
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlobalActions;->access$1000(Lcom/android/internal/policy/impl/GlobalActions;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 677
    iget-object v8, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlobalActions;->access$400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v2

    const-string v9, "usb"

    invoke-virtual {v2, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbManager;

    # setter for: Lcom/android/internal/policy/impl/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v8, v2}, Lcom/android/internal/policy/impl/GlobalActions;->access$1202(Lcom/android/internal/policy/impl/GlobalActions;Landroid/hardware/usb/UsbManager;)Landroid/hardware/usb/UsbManager;

    .line 678
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlobalActions;->access$1200(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/hardware/usb/UsbManager;

    move-result-object v2

    if-eqz v2, :cond_72

    .line 679
    iget-object v8, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlobalActions;->access$1000(Lcom/android/internal/policy/impl/GlobalActions;)Z

    move-result v2

    if-eqz v2, :cond_a4

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlobalActions;->access$1200(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/hardware/usb/UsbManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/usb/UsbManager;->isUsb30Enabled()Z

    move-result v2

    if-eqz v2, :cond_a4

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlobalActions;->access$1200(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/hardware/usb/UsbManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/usb/UsbManager;->isUsb30Available()Z

    move-result v2

    if-eqz v2, :cond_a4

    const/4 v2, 0x1

    :goto_6f
    # setter for: Lcom/android/internal/policy/impl/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z
    invoke-static {v8, v2}, Lcom/android/internal/policy/impl/GlobalActions;->access$1002(Lcom/android/internal/policy/impl/GlobalActions;Z)Z

    .line 683
    :cond_72
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlobalActions;->access$400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v2

    const-string v8, "enterprise_policy"

    invoke-virtual {v2, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 685
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v0, :cond_a6

    .line 686
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v2

    if-eqz v2, :cond_98

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/enterprise/RestrictionPolicy;->isAirplaneModeAllowed(Z)Z

    move-result v2

    if-nez v2, :cond_a6

    .line 688
    :cond_98
    sget-boolean v2, Lcom/android/internal/policy/impl/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v2, :cond_a3

    .line 689
    const-string v2, "GlobalActions"

    const-string v3, "restricted by MDM "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    :cond_a3
    :goto_a3
    return-void

    .line 679
    .end local v0    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    :cond_a4
    const/4 v2, 0x0

    goto :goto_6f

    .line 695
    .restart local v0    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    :cond_a6
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlobalActions;->access$400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v2

    const-string v8, "phone"

    invoke-virtual {v2, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 696
    .local v1, "telephony":Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v8, "CscFeature_BT_EnableSeparateSettingWithAirplainMode"

    invoke-virtual {v2, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_114

    .line 698
    if-eqz v1, :cond_ef

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v2

    if-eqz v2, :cond_ef

    .line 699
    iget-object v8, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    sget-object v9, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    if-ne v2, v9, :cond_e1

    move v2, v3

    :goto_d1
    const v4, 0x10401e8

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlobalActions;->access$1000(Lcom/android/internal/policy/impl/GlobalActions;)Z

    move-result v3

    if-eqz v3, :cond_ed

    move v3, v6

    :goto_dd
    # invokes: Lcom/android/internal/policy/impl/GlobalActions;->comfirmDialog(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;III)V
    invoke-static {v8, p0, v2, v4, v3}, Lcom/android/internal/policy/impl/GlobalActions;->access$600(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;III)V

    goto :goto_a3

    :cond_e1
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlobalActions;->access$1000(Lcom/android/internal/policy/impl/GlobalActions;)Z

    move-result v2

    if-eqz v2, :cond_eb

    move v2, v4

    goto :goto_d1

    :cond_eb
    move v2, v5

    goto :goto_d1

    :cond_ed
    move v3, v7

    goto :goto_dd

    .line 708
    :cond_ef
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    iget-object v8, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    sget-object v9, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    if-ne v8, v9, :cond_106

    :goto_f7
    const v4, 0x10401ed

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/GlobalActions;->access$1000(Lcom/android/internal/policy/impl/GlobalActions;)Z

    move-result v5

    if-eqz v5, :cond_112

    :goto_102
    # invokes: Lcom/android/internal/policy/impl/GlobalActions;->comfirmDialog(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;III)V
    invoke-static {v2, p0, v3, v4, v6}, Lcom/android/internal/policy/impl/GlobalActions;->access$600(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;III)V

    goto :goto_a3

    :cond_106
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlobalActions;->access$1000(Lcom/android/internal/policy/impl/GlobalActions;)Z

    move-result v3

    if-eqz v3, :cond_110

    move v3, v4

    goto :goto_f7

    :cond_110
    move v3, v5

    goto :goto_f7

    :cond_112
    move v6, v7

    goto :goto_102

    .line 718
    :cond_114
    if-eqz v1, :cond_142

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v2

    if-eqz v2, :cond_142

    .line 719
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    iget-object v8, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    sget-object v9, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    if-ne v8, v9, :cond_134

    :goto_124
    const v4, 0x10401e9

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/GlobalActions;->access$1000(Lcom/android/internal/policy/impl/GlobalActions;)Z

    move-result v5

    if-eqz v5, :cond_140

    :goto_12f
    # invokes: Lcom/android/internal/policy/impl/GlobalActions;->comfirmDialog(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;III)V
    invoke-static {v2, p0, v3, v4, v6}, Lcom/android/internal/policy/impl/GlobalActions;->access$600(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;III)V

    goto/16 :goto_a3

    :cond_134
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlobalActions;->access$1000(Lcom/android/internal/policy/impl/GlobalActions;)Z

    move-result v3

    if-eqz v3, :cond_13e

    move v3, v4

    goto :goto_124

    :cond_13e
    move v3, v5

    goto :goto_124

    :cond_140
    move v6, v7

    goto :goto_12f

    .line 728
    :cond_142
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    iget-object v8, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    sget-object v9, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    if-ne v8, v9, :cond_15a

    :goto_14a
    const v4, 0x10401ed

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/GlobalActions;->access$1000(Lcom/android/internal/policy/impl/GlobalActions;)Z

    move-result v5

    if-eqz v5, :cond_166

    :goto_155
    # invokes: Lcom/android/internal/policy/impl/GlobalActions;->comfirmDialog(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;III)V
    invoke-static {v2, p0, v3, v4, v6}, Lcom/android/internal/policy/impl/GlobalActions;->access$600(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;III)V

    goto/16 :goto_a3

    :cond_15a
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlobalActions;->access$1000(Lcom/android/internal/policy/impl/GlobalActions;)Z

    move-result v3

    if-eqz v3, :cond_164

    move v3, v4

    goto :goto_14a

    :cond_164
    move v3, v5

    goto :goto_14a

    :cond_166
    move v6, v7

    goto :goto_155
.end method

.method onToggle(Z)V
    .registers 6
    .param p1, "on"    # Z

    .prologue
    .line 740
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mHasTelephony:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$1300(Lcom/android/internal/policy/impl/GlobalActions;)Z

    move-result v1

    if-eqz v1, :cond_31

    const-string v1, "ril.cdma.inecmmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 742
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    const/4 v2, 0x1

    # setter for: Lcom/android/internal/policy/impl/GlobalActions;->mIsWaitingForEcmExit:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/GlobalActions;->access$1402(Lcom/android/internal/policy/impl/GlobalActions;Z)Z

    .line 744
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 746
    .local v0, "ecmDialogIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 747
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 752
    .end local v0    # "ecmDialogIntent":Landroid/content/Intent;
    :goto_30
    return-void

    .line 749
    :cond_31
    const-string v1, "GlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeAirplaneModeSystemSetting : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # invokes: Lcom/android/internal/policy/impl/GlobalActions;->changeAirplaneModeSystemSetting(Z)V
    invoke-static {v1, p1}, Lcom/android/internal/policy/impl/GlobalActions;->access$1500(Lcom/android/internal/policy/impl/GlobalActions;Z)V

    goto :goto_30
.end method

.method public showBeforeProvisioning()Z
    .registers 2

    .prologue
    .line 767
    const/4 v0, 0x0

    return v0
.end method

.method public showConditional()Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 770
    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mStrCSCFeatureGlobalActionItems:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$800()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AirplaneModeOn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-ne v2, v0, :cond_f

    .line 806
    :cond_e
    :goto_e
    return v0

    .line 773
    :cond_f
    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mStrCSCFeatureGlobalActionItems:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$800()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v0, :cond_78

    .line 775
    const-string v2, "LGT"

    const-string v3, "TMO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 776
    const-string v2, "lock"

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlobalActions;->access$400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "missing_phone_lock"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    move v0, v1

    .line 777
    goto :goto_e

    .line 779
    :cond_3f
    const-string v2, "CTC"

    const-string v3, "TMO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # invokes: Lcom/android/internal/policy/impl/GlobalActions;->isNoAirplaneModeActivityRunning()Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlobalActions;->access$1700(Lcom/android/internal/policy/impl/GlobalActions;)Z

    move-result v2

    if-eqz v2, :cond_53

    move v0, v1

    .line 780
    goto :goto_e

    .line 797
    :cond_53
    const-string v2, "CTC"

    const-string v3, "TMO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 799
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlobalActions;->access$400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "DUALMODE_SETTING"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_e

    .line 800
    const-string v0, "GlobalActions"

    const-string v2, "DUALMODE_SETTING : true"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 801
    goto :goto_e

    :cond_78
    move v0, v1

    .line 806
    goto :goto_e
.end method

.method public showDuringKeyguard()Z
    .registers 2

    .prologue
    .line 764
    const/4 v0, 0x1

    return v0
.end method
