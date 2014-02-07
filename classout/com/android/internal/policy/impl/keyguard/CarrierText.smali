.class public Lcom/android/internal/policy/impl/keyguard/CarrierText;
.super Landroid/widget/TextView;
.source "CarrierText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/CarrierText$2;,
        Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;
    }
.end annotation


# static fields
.field private static mSeparator:Ljava/lang/CharSequence;


# instance fields
.field private mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/CarrierText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/CarrierText$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/CarrierText$1;-><init>(Lcom/android/internal/policy/impl/keyguard/CarrierText;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 81
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 82
    return-void
.end method

.method private concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 8
    .param p1, "plmn"    # Ljava/lang/CharSequence;
    .param p2, "spn"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 265
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_53

    move v0, v2

    .line 266
    .local v0, "plmnValid":Z
    :goto_9
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_55

    move v1, v2

    .line 268
    .local v1, "spnValid":Z
    :goto_10
    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mSeparator:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2c

    :cond_1e
    if-eqz p2, :cond_57

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mSeparator:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 271
    :cond_2c
    const-string v2, "CarrierText"

    const-string v4, "text show two line , because 2 SIM case"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->setSingleLine(Z)V

    .line 274
    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->setGravity(I)V

    .line 276
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 286
    .end local p1    # "plmn":Ljava/lang/CharSequence;
    :cond_52
    :goto_52
    return-object p1

    .end local v0    # "plmnValid":Z
    .end local v1    # "spnValid":Z
    .restart local p1    # "plmn":Ljava/lang/CharSequence;
    :cond_53
    move v0, v3

    .line 265
    goto :goto_9

    .restart local v0    # "plmnValid":Z
    :cond_55
    move v1, v3

    .line 266
    goto :goto_10

    .line 279
    .restart local v1    # "spnValid":Z
    :cond_57
    if-eqz v0, :cond_73

    if-eqz v1, :cond_73

    .line 280
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mSeparator:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_52

    .line 281
    :cond_73
    if-nez v0, :cond_52

    .line 283
    if-eqz v1, :cond_79

    move-object p1, p2

    .line 284
    goto :goto_52

    .line 286
    :cond_79
    const-string p1, ""

    goto :goto_52
.end method

.method private getCarrierHelpTextForSimState(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 8
    .param p1, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;
    .param p2, "plmn"    # Ljava/lang/String;
    .param p3, "spn"    # Ljava/lang/String;

    .prologue
    .line 292
    const/4 v0, 0x0

    .line 293
    .local v0, "carrierHelpTextId":I
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    move-result-object v1

    .line 294
    .local v1, "status":Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->isCardIOError()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 295
    const v0, 0x10401aa

    .line 321
    :goto_e
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2

    .line 297
    :cond_15
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/CarrierText$2;->$SwitchMap$com$android$internal$policy$impl$keyguard$CarrierText$StatusMode:[I

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_32

    goto :goto_e

    .line 299
    :pswitch_21
    const v0, 0x104050b

    .line 300
    goto :goto_e

    .line 303
    :pswitch_25
    const v0, 0x104051a

    .line 304
    goto :goto_e

    .line 307
    :pswitch_29
    const v0, 0x104051c

    .line 308
    goto :goto_e

    .line 311
    :pswitch_2d
    const v0, 0x1040519

    .line 312
    goto :goto_e

    .line 297
    nop

    :pswitch_data_32
    .packed-switch 0x3
        :pswitch_21
        :pswitch_25
        :pswitch_29
        :pswitch_2d
    .end packed-switch
.end method

.method private getCarrierTextForSimState(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 9
    .param p1, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;
    .param p2, "plmn"    # Ljava/lang/CharSequence;
    .param p3, "spn"    # Ljava/lang/CharSequence;

    .prologue
    const v4, 0x1040517

    .line 130
    const/4 v0, 0x0

    .line 133
    .local v0, "carrierText":Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 134
    invoke-direct {p0, p2, p3}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 201
    :goto_e
    return-object v2

    .line 138
    :cond_f
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    move-result-object v1

    .line 140
    .local v1, "status":Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->isCardIOError()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 141
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10401a9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_24
    :goto_24
    move-object v2, v0

    .line 201
    goto :goto_e

    .line 143
    :cond_26
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/CarrierText$2;->$SwitchMap$com$android$internal$policy$impl$keyguard$CarrierText$StatusMode:[I

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_b8

    goto :goto_24

    .line 145
    :pswitch_32
    invoke-direct {p0, p2, p3}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 146
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isNoServiceDisplayWhenNoSIM()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 147
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1040508

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_24

    .line 152
    :pswitch_50
    const/4 v0, 0x0

    .line 153
    goto :goto_24

    .line 156
    :pswitch_52
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mContext:Landroid/content/Context;

    const v3, 0x104052f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 158
    goto :goto_24

    .line 168
    :pswitch_60
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 171
    goto :goto_24

    .line 174
    :pswitch_6d
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10401ab

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 175
    goto :goto_24

    .line 178
    :pswitch_79
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 181
    goto :goto_24

    .line 184
    :pswitch_86
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1040533

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 186
    goto :goto_24

    .line 189
    :pswitch_96
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x104052d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 192
    goto/16 :goto_24

    .line 195
    :pswitch_a7
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1040531

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_24

    .line 143
    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_32
        :pswitch_50
        :pswitch_52
        :pswitch_60
        :pswitch_6d
        :pswitch_79
        :pswitch_86
        :pswitch_96
        :pswitch_a7
    .end packed-switch
.end method

.method private getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;
    .registers 5
    .param p1, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 228
    if-nez p1, :cond_5

    .line 229
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->Normal:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    .line 261
    :goto_4
    return-object v1

    .line 232
    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_2c

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p1, v1, :cond_19

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v1, :cond_2c

    :cond_19
    const/4 v0, 0x1

    .line 238
    .local v0, "missingAndNotProvisioned":Z
    :goto_1a
    if-eqz v0, :cond_1e

    sget-object p1, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 239
    :cond_1e
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CarrierText$2;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_4c

    .line 261
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->SimMissing:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    goto :goto_4

    .line 232
    .end local v0    # "missingAndNotProvisioned":Z
    :cond_2c
    const/4 v0, 0x0

    goto :goto_1a

    .line 241
    .restart local v0    # "missingAndNotProvisioned":Z
    :pswitch_2e
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->SimMissing:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    goto :goto_4

    .line 243
    :pswitch_31
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->SimMissingLocked:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    goto :goto_4

    .line 245
    :pswitch_34
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->SimNotReady:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    goto :goto_4

    .line 247
    :pswitch_37
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->SimLocked:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    goto :goto_4

    .line 249
    :pswitch_3a
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->SimPukLocked:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    goto :goto_4

    .line 251
    :pswitch_3d
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->SimPersoLocked:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    goto :goto_4

    .line 253
    :pswitch_40
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->Normal:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    goto :goto_4

    .line 255
    :pswitch_43
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->SimPermDisabled:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    goto :goto_4

    .line 257
    :pswitch_46
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->SimMissing:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    goto :goto_4

    .line 259
    :pswitch_49
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->SimIOError:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    goto :goto_4

    .line 239
    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_31
        :pswitch_34
        :pswitch_37
        :pswitch_3a
        :pswitch_3d
        :pswitch_40
        :pswitch_43
        :pswitch_46
        :pswitch_49
    .end packed-switch
.end method

.method private isCardIOError()Z
    .registers 4

    .prologue
    .line 205
    const-string v1, "ril.pin_mode"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "pinMode":Ljava/lang/String;
    const-string v1, "3"

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 207
    const/4 v1, 0x1

    .line 209
    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method private makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "simMessage"    # Ljava/lang/CharSequence;
    .param p2, "emergencyCallMessage"    # Ljava/lang/CharSequence;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallCapable()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 218
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 220
    .end local p1    # "simMessage":Ljava/lang/CharSequence;
    :cond_c
    return-object p1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    .line 109
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 110
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 111
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 115
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 116
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 117
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 102
    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    .line 103
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104090e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mSeparator:Ljava/lang/CharSequence;

    .line 104
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->setSelected(Z)V

    .line 105
    return-void
.end method

.method protected updateCarrierText(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 6
    .param p1, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;
    .param p2, "plmn"    # Ljava/lang/CharSequence;
    .param p3, "spn"    # Ljava/lang/CharSequence;

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 87
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isDualModeDevice()I

    move-result v1

    if-eqz v1, :cond_1d

    .line 88
    invoke-direct {p0, p2, p3}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 93
    :goto_b
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->USE_UPPER_CASE:Z

    if-eqz v1, :cond_24

    .line 94
    if-eqz v0, :cond_22

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    :goto_19
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->setText(Ljava/lang/CharSequence;)V

    .line 98
    :goto_1c
    return-void

    .line 91
    :cond_1d
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->getCarrierTextForSimState(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_b

    .line 94
    :cond_22
    const/4 v1, 0x0

    goto :goto_19

    .line 96
    :cond_24
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1c
.end method
