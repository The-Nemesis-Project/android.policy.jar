.class Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$1;
.super Landroid/os/Handler;
.source "HeaderWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)V
    .registers 2

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 115
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e

    .line 120
    :goto_5
    return-void

    .line 117
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->dismissMenu(Z)V

    goto :goto_5

    .line 115
    nop

    :pswitch_data_e
    .packed-switch 0x64
        :pswitch_6
    .end packed-switch
.end method
