.class public Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitorCallback.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method goToUnlockScreenForDetachPen()V
    .registers 1

    .prologue
    .line 125
    return-void
.end method

.method initialize()V
    .registers 1

    .prologue
    .line 154
    return-void
.end method

.method onBootCompleted()V
    .registers 1

    .prologue
    .line 120
    return-void
.end method

.method onClockVisibilityChanged()V
    .registers 1

    .prologue
    .line 75
    return-void
.end method

.method onDevicePolicyManagerStateChanged()V
    .registers 1

    .prologue
    .line 86
    return-void
.end method

.method onDeviceProvisioned()V
    .registers 1

    .prologue
    .line 80
    return-void
.end method

.method public onFlipboardDataUpdated()V
    .registers 1

    .prologue
    .line 142
    return-void
.end method

.method onKeyguardVisibilityChanged(Z)V
    .registers 2
    .param p1, "showing"    # Z

    .prologue
    .line 69
    return-void
.end method

.method onMusicClientIdChanged(IZLandroid/app/PendingIntent;)V
    .registers 4
    .param p1, "clientGeneration"    # I
    .param p2, "clearing"    # Z
    .param p3, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 130
    return-void
.end method

.method public onMusicPlaybackStateChanged(IJ)V
    .registers 4
    .param p1, "playbackState"    # I
    .param p2, "eventTime"    # J

    .prologue
    .line 137
    return-void
.end method

.method onPhoneStateChanged(I)V
    .registers 2
    .param p1, "phoneState"    # I

    .prologue
    .line 63
    return-void
.end method

.method onRefreshBatteryInfo(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .registers 2
    .param p1, "status"    # Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .prologue
    .line 34
    return-void
.end method

.method onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "plmn"    # Ljava/lang/CharSequence;
    .param p2, "spn"    # Ljava/lang/CharSequence;

    .prologue
    .line 48
    return-void
.end method

.method onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .registers 4
    .param p1, "plmn"    # Ljava/lang/CharSequence;
    .param p2, "spn"    # Ljava/lang/CharSequence;
    .param p3, "subscription"    # I

    .prologue
    .line 152
    return-void
.end method

.method onRingerModeChanged(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 55
    return-void
.end method

.method onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .registers 2
    .param p1, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 102
    return-void
.end method

.method onTimeChanged()V
    .registers 1

    .prologue
    .line 39
    return-void
.end method

.method onUserInfoChanged(I)V
    .registers 2
    .param p1, "userId"    # I

    .prologue
    .line 112
    return-void
.end method

.method onUserRemoved(I)V
    .registers 2
    .param p1, "userId"    # I

    .prologue
    .line 107
    return-void
.end method

.method onUserSwitchComplete(I)V
    .registers 2
    .param p1, "userId"    # I

    .prologue
    .line 96
    return-void
.end method

.method public onUserSwitching(I)V
    .registers 2
    .param p1, "userId"    # I

    .prologue
    .line 91
    return-void
.end method
