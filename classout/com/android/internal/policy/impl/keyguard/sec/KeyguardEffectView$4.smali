.class Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$4;
.super Landroid/os/FileObserver;
.source "KeyguardEffectView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;Ljava/lang/String;)V
    .registers 3
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    invoke-direct {p0, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .registers 8
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x12f2

    .line 240
    sparse-switch p1, :sswitch_data_42

    .line 256
    :goto_5
    return-void

    .line 244
    :sswitch_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_wallpaper_path"

    const-string v2, ""

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 247
    :sswitch_18
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 248
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 249
    :cond_2d
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5

    .line 240
    nop

    :sswitch_data_42
    .sparse-switch
        0x2 -> :sswitch_18
        0x200 -> :sswitch_6
        0x400 -> :sswitch_6
    .end sparse-switch
.end method
