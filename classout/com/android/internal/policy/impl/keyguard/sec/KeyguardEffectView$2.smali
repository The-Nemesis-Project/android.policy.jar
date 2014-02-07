.class Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$2;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardEffectView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)V
    .registers 2

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "cxt"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v2, 0x12f2

    .line 116
    const-string v0, "KeyguardBackgroundView"

    const-string v1, "*** mAdminReceiver - onReceive ***"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 118
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 119
    :cond_1e
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 122
    const-string v0, "KeyguardBackgroundView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "intet action : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void
.end method
