.class Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$6;
.super Landroid/database/ContentObserver;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->watchForDeviceProvisioning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Landroid/os/Handler;)V
    .registers 3
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 636
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5
    .param p1, "selfChange"    # Z

    .prologue
    .line 639
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 640
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isDeviceProvisionedInSettingsDb()Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$2300(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Z

    move-result v1

    # setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$2202(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Z)Z

    .line 641
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$2200(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 642
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x134

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 645
    :cond_2b
    return-void
.end method