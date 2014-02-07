.class Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$6;
.super Landroid/os/Handler;
.source "SViewCoverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;Landroid/os/Looper;)V
    .registers 3
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$6;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 293
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_36

    .line 316
    :goto_5
    return-void

    .line 295
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$6;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    # invokes: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->buildSViewCover()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$1600(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)V

    goto :goto_5

    .line 298
    :pswitch_c
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$6;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    # invokes: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->handleHide()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$1700(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)V

    goto :goto_5

    .line 301
    :pswitch_12
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$6;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    # invokes: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->handleShow()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$1800(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)V

    goto :goto_5

    .line 304
    :pswitch_18
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$6;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$CoverRemoteViews;

    # invokes: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->handleRemoteView(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$CoverRemoteViews;)V
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$1900(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$CoverRemoteViews;)V

    goto :goto_5

    .line 307
    :pswitch_22
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$6;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    const/4 v1, 0x1

    # invokes: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->handleSetPartialScreen(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$2000(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;Z)V

    goto :goto_5

    .line 310
    :pswitch_29
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$6;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    const/4 v1, 0x0

    # invokes: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->handleSetPartialScreen(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$2000(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;Z)V

    goto :goto_5

    .line 313
    :pswitch_30
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$6;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->handleBackgroundColorUpdated()V

    goto :goto_5

    .line 293
    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_6
        :pswitch_c
        :pswitch_12
        :pswitch_18
        :pswitch_22
        :pswitch_29
        :pswitch_30
    .end packed-switch
.end method
