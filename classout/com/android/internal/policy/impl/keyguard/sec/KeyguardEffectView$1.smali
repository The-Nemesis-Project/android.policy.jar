.class Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$1;
.super Landroid/os/Handler;
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
    .line 93
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 97
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_30

    .line 109
    :goto_5
    return-void

    .line 99
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenWallpaper;->isLiveWallpaper(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 100
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenWallpaper;->disableFlipboardWallpaper(Landroid/content/Context;)V

    .line 101
    :cond_1b
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    # invokes: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->handleChangeWallpaperType()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$100(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)V

    goto :goto_5

    .line 105
    :pswitch_21
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenWallpaper;->disableFlipboardWallpaper(Landroid/content/Context;)V

    .line 106
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    # invokes: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->handleUpdateKeygaurdBackgroud()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$200(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)V

    goto :goto_5

    .line 97
    :pswitch_data_30
    .packed-switch 0x12f0
        :pswitch_6
        :pswitch_21
        :pswitch_21
    .end packed-switch
.end method
