.class Lcom/android/internal/policy/impl/GlobalActions$28;
.super Landroid/os/Handler;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;)V
    .registers 2

    .prologue
    .line 2490
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$28;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 2492
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_ee

    .line 2540
    :cond_6
    :goto_6
    return-void

    .line 2494
    :pswitch_7
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$28;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$1900(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 2495
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$28;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$1900(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 2497
    :cond_18
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$28;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$2400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$28;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$2400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 2498
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$28;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$2400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 2500
    :cond_35
    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$2900()Z

    move-result v1

    if-nez v1, :cond_6

    .line 2501
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$28;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialogSViewCoverDialog:Landroid/app/GlobalActionsSViewCoverDialog;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$4600(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/app/GlobalActionsSViewCoverDialog;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$28;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialogSViewCoverDialog:Landroid/app/GlobalActionsSViewCoverDialog;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$4600(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/app/GlobalActionsSViewCoverDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2502
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$28;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialogSViewCoverDialog:Landroid/app/GlobalActionsSViewCoverDialog;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$4600(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/app/GlobalActionsSViewCoverDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_6

    .line 2507
    :pswitch_59
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$28;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$1800(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 2508
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$28;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$1800(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_6

    .line 2512
    :pswitch_6b
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$28;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$1800(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    move-result-object v1

    if-eqz v1, :cond_7c

    .line 2513
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$28;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$1800(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 2515
    :cond_7c
    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions;->mSilentModeView:Landroid/view/View;

    if-eqz v1, :cond_6

    .line 2516
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$28;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$4700(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->updateRingerMode()V

    goto/16 :goto_6

    .line 2520
    :pswitch_8b
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$28;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$1800(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 2521
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$28;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # invokes: Lcom/android/internal/policy/impl/GlobalActions;->handleShow()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$4800(Lcom/android/internal/policy/impl/GlobalActions;)V

    goto/16 :goto_6

    .line 2524
    :pswitch_9b
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$28;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$4000(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    move-result-object v1

    if-eqz v1, :cond_b2

    .line 2525
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$28;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$4000(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$28;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlobalActions;->access$1600(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    .line 2527
    :cond_b2
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$28;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$1800(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 2528
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$28;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$1800(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto/16 :goto_6

    .line 2532
    :pswitch_c5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2533
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2534
    const-string v1, "suppressCoverUI"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2535
    const-string v1, "miniModeUI"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2536
    const-string v2, "sender"

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2537
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$28;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 2492
    nop

    :pswitch_data_ee
    .packed-switch 0x0
        :pswitch_7
        :pswitch_59
        :pswitch_8b
        :pswitch_9b
        :pswitch_c5
        :pswitch_6b
    .end packed-switch
.end method
