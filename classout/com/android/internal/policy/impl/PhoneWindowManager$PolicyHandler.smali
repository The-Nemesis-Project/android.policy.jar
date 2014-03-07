.class Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;
.super Landroid/os/Handler;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PolicyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .registers 2

    .prologue
    .line 644
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p2, "x1"    # Lcom/android/internal/policy/impl/PhoneWindowManager$1;

    .prologue
    .line 644
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 647
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_38

    .line 671
    :goto_5
    return-void

    .line 649
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->enablePointerLocation()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$000(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    goto :goto_5

    .line 652
    :pswitch_c
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->disablePointerLocation()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$100(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    goto :goto_5

    .line 655
    :pswitch_12
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/KeyEvent;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->dispatchMediaKeyWithWakeLock(Landroid/view/KeyEvent;)V

    goto :goto_5

    .line 659
    :pswitch_1c
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->enableSPenGesture()V

    goto :goto_5

    .line 663
    :pswitch_24
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/KeyEvent;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->dispatchMediaKeyRepeatWithWakeLock(Landroid/view/KeyEvent;)V

    goto :goto_5

    .line 667
    :pswitch_2e
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->notifyToSSRM(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$200(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)V

    goto :goto_5

    .line 647
    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_6
        :pswitch_c
        :pswitch_12
        :pswitch_24
        :pswitch_1c
        :pswitch_2e
    .end packed-switch
.end method
