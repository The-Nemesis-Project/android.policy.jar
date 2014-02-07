.class Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimArgs"
.end annotation


# instance fields
.field public final simState:Lcom/android/internal/telephony/IccCardConstants$State;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .registers 2
    .param p1, "state"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 409
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 410
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 411
    return-void
.end method

.method static fromIntent(Landroid/content/Intent;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;
    .registers 7
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 415
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 416
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "only handles intent ACTION_SIM_STATE_CHANGED"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 418
    :cond_14
    const-string v4, "ss"

    invoke-virtual {p0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 419
    .local v3, "stateExtra":Ljava/lang/String;
    const-string v4, "ABSENT"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 420
    const-string v4, "reason"

    invoke-virtual {p0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, "absentReason":Ljava/lang/String;
    const-string v4, "PERM_DISABLED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 425
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 459
    .end local v0    # "absentReason":Ljava/lang/String;
    .local v2, "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :goto_32
    new-instance v4, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;

    invoke-direct {v4, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;-><init>(Lcom/android/internal/telephony/IccCardConstants$State;)V

    return-object v4

    .line 427
    .end local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    .restart local v0    # "absentReason":Ljava/lang/String;
    :cond_38
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_32

    .line 429
    .end local v0    # "absentReason":Ljava/lang/String;
    .end local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_3b
    const-string v4, "READY"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 430
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_32

    .line 431
    .end local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_46
    const-string v4, "LOCKED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8f

    .line 432
    const-string v4, "reason"

    invoke-virtual {p0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 434
    .local v1, "lockedReason":Ljava/lang/String;
    const-string v4, "PIN"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 435
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_32

    .line 436
    .end local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_5f
    const-string v4, "PUK"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 437
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_32

    .line 438
    .end local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_6a
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isUSIMPersoFeatureEnable()Z

    move-result v4

    if-eqz v4, :cond_7b

    const-string v4, "PERSO"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 440
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_32

    .line 441
    .end local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_7b
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v4

    if-eqz v4, :cond_8c

    const-string v4, "PERM_DISABLED"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8c

    .line 443
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_32

    .line 445
    .end local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_8c
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_32

    .line 447
    .end local v1    # "lockedReason":Ljava/lang/String;
    .end local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_8f
    const-string v4, "CARD_IO_ERROR"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9a

    .line 448
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_32

    .line 449
    .end local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_9a
    const-string v4, "NETWORK"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a5

    .line 450
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_32

    .line 451
    .end local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_a5
    const-string v4, "LOADED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b5

    const-string v4, "IMSI"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b9

    .line 455
    :cond_b5
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto/16 :goto_32

    .line 457
    .end local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_b9
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto/16 :goto_32
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardConstants$State;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
