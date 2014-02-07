.class final Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$H;
.super Landroid/os/Handler;
.source "MultiPhoneWindowEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field public static final MSG_TITLEBAR_TIMEOUT:I = 0x1

.field public static final TITLEBAR_TIMEOUT:I = 0x5dc


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V
    .registers 2

    .prologue
    .line 3205
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$H;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3212
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_c

    .line 3219
    :goto_5
    return-void

    .line 3214
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$H;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hideTitleBar()V

    goto :goto_5

    .line 3212
    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
