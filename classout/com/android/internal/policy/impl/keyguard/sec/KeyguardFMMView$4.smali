.class Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView$4;
.super Landroid/os/Handler;
.source "KeyguardFMMView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;)V
    .registers 2

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 256
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e

    .line 261
    :goto_5
    return-void

    .line 258
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->handleTimeout(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->access$400(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;I)V

    goto :goto_5

    .line 256
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
