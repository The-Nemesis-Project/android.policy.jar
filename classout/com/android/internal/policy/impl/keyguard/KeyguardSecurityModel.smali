.class public Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;
.super Ljava/lang/Object;
.source "KeyguardSecurityModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$2;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    }
.end annotation


# instance fields
.field private isPinUnlocking:Z

.field private mBroadCastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mLock:Ljava/lang/Object;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 101
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->isPinUnlocking:Z

    .line 102
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mLock:Ljava/lang/Object;

    .line 82
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mContext:Landroid/content/Context;

    .line 83
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 85
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 86
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.android.server.enterprise.ICCID_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "android.permission.sec.MDM_NOTIFY_ICCID_AVAILABLE"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method private isBiometricUnlockSuppressed()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 123
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    .line 124
    .local v1, "monitor":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_26

    move v0, v2

    .line 126
    .local v0, "backupIsTimedOut":Z
    :goto_10
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getMaxBiometricUnlockAttemptsReached()Z

    move-result v4

    if-nez v4, :cond_24

    if-nez v0, :cond_24

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isAlternateUnlockEnabled()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v4

    if-eqz v4, :cond_25

    :cond_24
    move v3, v2

    :cond_25
    return v3

    .end local v0    # "backupIsTimedOut":Z
    :cond_26
    move v0, v3

    .line 124
    goto :goto_10
.end method


# virtual methods
.method getAlternateFor(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    .registers 3
    .param p1, "mode"    # Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->isBiometricUnlockEnabled()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->isBiometricUnlockSuppressed()Z

    move-result v0

    if-nez v0, :cond_1a

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v0, :cond_18

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v0, :cond_18

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v0, :cond_1a

    .line 289
    :cond_18
    sget-object p1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Biometric:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 291
    .end local p1    # "mode":Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_1a
    return-object p1
.end method

.method getBackupSecurityMode(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    .registers 4
    .param p1, "mode"    # Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    .line 301
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$2;->$SwitchMap$com$android$internal$policy$impl$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1c

    .line 311
    .end local p1    # "mode":Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    :goto_b
    return-object p1

    .line 303
    .restart local p1    # "mode":Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    :pswitch_c
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p1

    goto :goto_b

    .line 305
    :pswitch_11
    sget-object p1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_b

    .line 307
    :pswitch_14
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSignatureBackupSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p1

    goto :goto_b

    .line 309
    :pswitch_19
    sget-object p1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SPassPassword:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_b

    .line 301
    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_c
        :pswitch_11
        :pswitch_14
        :pswitch_19
    .end packed-switch
.end method

.method getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    .registers 20

    .prologue
    .line 132
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v14

    .line 135
    .local v14, "updateMonitor":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v14}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v13

    .line 136
    .local v13, "tempState":Lcom/android/internal/telephony/IccCardConstants$State;
    sget-object v15, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v13, v15, :cond_c8

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->isPinUnlocking:Z

    if-nez v15, :cond_c8

    .line 137
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mContext:Landroid/content/Context;

    const-string v16, "enterprise_policy"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 139
    .local v2, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/app/enterprise/PhoneRestrictionPolicy;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/app/enterprise/PhoneRestrictionPolicy;->isSimLockedByAdmin(Ljava/lang/String;)Z

    move-result v3

    .line 140
    .local v3, "hasSimcardLockedByAdmin":Z
    if-eqz v3, :cond_c6

    .line 141
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mContext:Landroid/content/Context;

    const-string v16, "phone"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    .line 143
    .local v12, "telManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v4

    .line 144
    .local v4, "iccId":Ljava/lang/String;
    const/16 v8, 0xa

    .line 145
    .local v8, "numRetries":I
    :goto_40
    if-nez v4, :cond_61

    if-lez v8, :cond_61

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 148
    :try_start_4b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mLock:Ljava/lang/Object;

    const-wide/16 v17, 0x3e8

    move-wide/from16 v0, v17

    invoke-virtual {v15, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_56
    .catch Ljava/lang/InterruptedException; {:try_start_4b .. :try_end_56} :catch_1f7
    .catchall {:try_start_4b .. :try_end_56} :catchall_5e

    .line 152
    :goto_56
    :try_start_56
    monitor-exit v16
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_5e

    .line 153
    add-int/lit8 v8, v8, -0x1

    .line 154
    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v4

    goto :goto_40

    .line 152
    :catchall_5e
    move-exception v15

    :try_start_5f
    monitor-exit v16
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw v15

    .line 156
    :cond_61
    if-eqz v4, :cond_c4

    .line 157
    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/app/enterprise/PhoneRestrictionPolicy;

    move-result-object v15

    invoke-virtual {v15, v4}, Landroid/app/enterprise/PhoneRestrictionPolicy;->isSimLockedByAdmin(Ljava/lang/String;)Z

    move-result v5

    .line 158
    .local v5, "isSimLockedByAdmin":Z
    if-eqz v5, :cond_c2

    sget-object v11, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 159
    .local v11, "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :goto_6f
    if-eqz v5, :cond_8b

    .line 160
    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/app/enterprise/PhoneRestrictionPolicy;

    move-result-object v15

    invoke-virtual {v15, v4}, Landroid/app/enterprise/PhoneRestrictionPolicy;->getPinCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 162
    .local v9, "pin":Ljava/lang/String;
    :try_start_79
    const-string v15, "phone"

    invoke-static {v15}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v15

    invoke-interface {v15, v9}, Lcom/android/internal/telephony/ITelephony;->supplyPin(Ljava/lang/String;)Z

    .line 163
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->isPinUnlocking:Z
    :try_end_8b
    .catch Landroid/os/RemoteException; {:try_start_79 .. :try_end_8b} :catch_1f4

    .line 180
    .end local v2    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v3    # "hasSimcardLockedByAdmin":Z
    .end local v4    # "iccId":Ljava/lang/String;
    .end local v5    # "isSimLockedByAdmin":Z
    .end local v8    # "numRetries":I
    .end local v9    # "pin":Ljava/lang/String;
    .end local v12    # "telManager":Landroid/telephony/TelephonyManager;
    :cond_8b
    :goto_8b
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 181
    .local v6, "mode":Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v15, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v11, v15, :cond_d6

    .line 182
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 254
    :cond_93
    :goto_93
    sget-boolean v15, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSwipeLockShowingBeforeTimeout:Z

    if-eqz v15, :cond_ad

    sget-object v15, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v6, v15, :cond_ab

    sget-object v15, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v6, v15, :cond_ab

    sget-object v15, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v6, v15, :cond_ab

    sget-object v15, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SmartcardPIN:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v6, v15, :cond_ab

    sget-object v15, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Signature:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v6, v15, :cond_ad

    .line 258
    :cond_ab
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 262
    :cond_ad
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v15

    if-eqz v15, :cond_c1

    .line 263
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getPINPUKRequest()Z

    move-result v15

    if-eqz v15, :cond_c1

    .line 264
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getPUKRequest()Z

    move-result v15

    if-eqz v15, :cond_1ea

    .line 265
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 273
    :cond_c1
    :goto_c1
    return-object v6

    .end local v6    # "mode":Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    .end local v11    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    .restart local v2    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .restart local v3    # "hasSimcardLockedByAdmin":Z
    .restart local v4    # "iccId":Ljava/lang/String;
    .restart local v5    # "isSimLockedByAdmin":Z
    .restart local v8    # "numRetries":I
    .restart local v12    # "telManager":Landroid/telephony/TelephonyManager;
    :cond_c2
    move-object v11, v13

    .line 158
    goto :goto_6f

    .line 168
    .end local v5    # "isSimLockedByAdmin":Z
    :cond_c4
    move-object v11, v13

    .restart local v11    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_8b

    .line 171
    .end local v4    # "iccId":Ljava/lang/String;
    .end local v8    # "numRetries":I
    .end local v11    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    .end local v12    # "telManager":Landroid/telephony/TelephonyManager;
    :cond_c6
    move-object v11, v13

    .restart local v11    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_8b

    .line 173
    .end local v2    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v3    # "hasSimcardLockedByAdmin":Z
    .end local v11    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_c8
    sget-object v15, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v13, v15, :cond_d3

    .line 174
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->isPinUnlocking:Z

    .line 175
    move-object v11, v13

    .restart local v11    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_8b

    .line 177
    .end local v11    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_d3
    sget-object v11, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v11    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_8b

    .line 183
    .restart local v6    # "mode":Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_d6
    sget-object v15, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v11, v15, :cond_e7

    .line 187
    :cond_da
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isUSIMPersoFeatureEnable()Z

    move-result v15

    if-eqz v15, :cond_f4

    sget-object v15, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v11, v15, :cond_f4

    .line 189
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SimPerso:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_93

    .line 183
    :cond_e7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v15}, Lcom/android/internal/widget/LockPatternUtils;->isPukUnlockScreenEnable()Z

    move-result v15

    if-eqz v15, :cond_da

    .line 186
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_93

    .line 190
    :cond_f4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v15}, Lcom/android/internal/widget/LockPatternUtils;->isRecoveryLockEnabled()Z

    move-result v15

    if-eqz v15, :cond_101

    .line 191
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Recovery:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_93

    .line 192
    :cond_101
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v15}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockEnabled()Z

    move-result v15

    if-eqz v15, :cond_10e

    .line 193
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->CarrierLock:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_93

    .line 194
    :cond_10e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v15}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled()Z

    move-result v15

    if-eqz v15, :cond_11c

    .line 195
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->FMM:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    goto/16 :goto_93

    .line 197
    :cond_11c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v15}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v10

    .line 198
    .local v10, "security":I
    sparse-switch v10, :sswitch_data_1fa

    .line 250
    new-instance v15, Ljava/lang/IllegalStateException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unknown unlock mode:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 200
    :sswitch_142
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v15}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v15

    if-eqz v15, :cond_150

    sget-object v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 202
    :goto_14e
    goto/16 :goto_93

    .line 200
    :cond_150
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_14e

    .line 206
    :sswitch_153
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v15}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v15

    if-eqz v15, :cond_161

    sget-object v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 208
    :goto_15f
    goto/16 :goto_93

    .line 206
    :cond_161
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_15f

    .line 211
    :sswitch_164
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v15}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v15

    if-eqz v15, :cond_172

    sget-object v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SmartcardPIN:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 213
    :goto_170
    goto/16 :goto_93

    .line 211
    :cond_172
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_170

    .line 216
    :sswitch_175
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v15}, Lcom/android/internal/widget/LockPatternUtils;->isLockFingerprintEnabled()Z

    move-result v15

    if-eqz v15, :cond_19f

    .line 217
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v7

    .line 218
    .local v7, "monitor":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v16, v0

    const/16 v16, 0xa

    move/from16 v0, v16

    if-ge v15, v0, :cond_19b

    .line 219
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SPass:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    goto/16 :goto_93

    .line 221
    :cond_19b
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SPassPassword:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    goto/16 :goto_93

    .line 224
    .end local v7    # "monitor":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    :cond_19f
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 226
    goto/16 :goto_93

    .line 229
    :sswitch_1a3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v15}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v15

    if-eqz v15, :cond_93

    .line 230
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v15}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked()Z

    move-result v15

    if-eqz v15, :cond_1bb

    sget-object v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    :goto_1b9
    goto/16 :goto_93

    :cond_1bb
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_1b9

    .line 236
    :sswitch_1be
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Signature:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 237
    goto/16 :goto_93

    .line 239
    :sswitch_1c2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v7

    .line 240
    .restart local v7    # "monitor":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v15}, Lcom/android/internal/widget/LockPatternUtils;->isSwipeSmartLock()Z

    move-result v15

    if-eqz v15, :cond_1d8

    .line 241
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    goto/16 :goto_93

    .line 243
    :cond_1d8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v15}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists()Z

    move-result v15

    if-eqz v15, :cond_1e6

    .line 244
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    goto/16 :goto_93

    .line 246
    :cond_1e6
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->BackupPin:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 248
    goto/16 :goto_93

    .line 266
    .end local v7    # "monitor":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    .end local v10    # "security":I
    :cond_1ea
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getPINRequest()Z

    move-result v15

    if-eqz v15, :cond_c1

    .line 267
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    goto/16 :goto_c1

    .line 164
    .end local v6    # "mode":Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    .restart local v2    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .restart local v3    # "hasSimcardLockedByAdmin":Z
    .restart local v4    # "iccId":Ljava/lang/String;
    .restart local v5    # "isSimLockedByAdmin":Z
    .restart local v8    # "numRetries":I
    .restart local v9    # "pin":Ljava/lang/String;
    .restart local v12    # "telManager":Landroid/telephony/TelephonyManager;
    :catch_1f4
    move-exception v15

    goto/16 :goto_8b

    .line 149
    .end local v5    # "isSimLockedByAdmin":Z
    .end local v9    # "pin":Ljava/lang/String;
    .end local v11    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :catch_1f7
    move-exception v15

    goto/16 :goto_56

    .line 198
    :sswitch_data_1fa
    .sparse-switch
        0x0 -> :sswitch_1a3
        0x9000 -> :sswitch_1be
        0x10000 -> :sswitch_1a3
        0x20000 -> :sswitch_142
        0x40000 -> :sswitch_153
        0x50000 -> :sswitch_153
        0x60000 -> :sswitch_153
        0x70000 -> :sswitch_164
        0x80000 -> :sswitch_175
        0x90000 -> :sswitch_1c2
    .end sparse-switch
.end method

.method public getSignatureBackupSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    .registers 2

    .prologue
    .line 330
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->BackupPin:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object v0
.end method

.method isBiometricUnlockEnabled()Z
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 2
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 107
    return-void
.end method
