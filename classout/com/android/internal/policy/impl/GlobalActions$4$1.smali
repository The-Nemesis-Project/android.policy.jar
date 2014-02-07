.class Lcom/android/internal/policy/impl/GlobalActions$4$1;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions$4;->onPress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/GlobalActions$4;

.field final synthetic val$bIsEnable:Z

.field final synthetic val$disableExclusiveOptionsFlag:I

.field final synthetic val$disableExclusiveOptionsMessage:Ljava/lang/String;

.field final synthetic val$is_enabled:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions$4;ZZLjava/lang/String;I)V
    .registers 6

    .prologue
    .line 656
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$4$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$4;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/GlobalActions$4$1;->val$bIsEnable:Z

    iput-boolean p3, p0, Lcom/android/internal/policy/impl/GlobalActions$4$1;->val$is_enabled:Z

    iput-object p4, p0, Lcom/android/internal/policy/impl/GlobalActions$4$1;->val$disableExclusiveOptionsMessage:Ljava/lang/String;

    iput p5, p0, Lcom/android/internal/policy/impl/GlobalActions$4$1;->val$disableExclusiveOptionsFlag:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/4 v6, 0x1

    .line 661
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/GlobalActions$4$1;->val$bIsEnable:Z

    if-nez v3, :cond_c1

    .line 662
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/GlobalActions$4$1;->val$is_enabled:Z

    if-nez v3, :cond_40

    .line 663
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$4$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$4;

    iget-object v3, v3, Lcom/android/internal/policy/impl/GlobalActions$4;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlobalActions;->access$800(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enabled_accessibility_services"

    const-string v5, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 667
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$4$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$4;

    iget-object v3, v3, Lcom/android/internal/policy/impl/GlobalActions$4;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlobalActions;->access$800(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_enabled"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 669
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.settings.action.talkback_off"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 670
    .local v2, "talk_back_off":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$4$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$4;

    iget-object v3, v3, Lcom/android/internal/policy/impl/GlobalActions$4;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlobalActions;->access$800(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 715
    .end local v2    # "talk_back_off":Landroid/content/Intent;
    :goto_3f
    return-void

    .line 672
    :cond_40
    # setter for: Lcom/android/internal/policy/impl/GlobalActions;->sIsSecondConfirming:Z
    invoke-static {v6}, Lcom/android/internal/policy/impl/GlobalActions;->access$102(Z)Z

    .line 673
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$4$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$4;

    iget-object v3, v3, Lcom/android/internal/policy/impl/GlobalActions$4;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlobalActions;->access$800(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 674
    .local v0, "_builder":Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$4$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$4;

    iget-object v3, v3, Lcom/android/internal/policy/impl/GlobalActions$4;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlobalActions;->access$800(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10409aa

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 675
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$4$1;->val$disableExclusiveOptionsMessage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 676
    const v3, 0x104000a

    new-instance v4, Lcom/android/internal/policy/impl/GlobalActions$4$1$1;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/GlobalActions$4$1$1;-><init>(Lcom/android/internal/policy/impl/GlobalActions$4$1;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 692
    const/high16 v3, 0x1040000

    new-instance v4, Lcom/android/internal/policy/impl/GlobalActions$4$1$2;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/GlobalActions$4$1$2;-><init>(Lcom/android/internal/policy/impl/GlobalActions$4$1;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 698
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 699
    .local v1, "_dialog":Landroid/app/AlertDialog;
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$4$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$4;

    iget-object v3, v3, Lcom/android/internal/policy/impl/GlobalActions$4;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlobalActions;->access$1800(Lcom/android/internal/policy/impl/GlobalActions;)Z

    move-result v3

    if-eqz v3, :cond_b7

    .line 700
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 704
    :goto_97
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$4$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$4;

    iget-object v3, v3, Lcom/android/internal/policy/impl/GlobalActions$4;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialogReceiver:Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlobalActions;->access$1900(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;

    move-result-object v3

    iput-object v1, v3, Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;->dialog:Landroid/app/AlertDialog;

    .line 705
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$4$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$4;

    iget-object v3, v3, Lcom/android/internal/policy/impl/GlobalActions$4;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialogReceiver:Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlobalActions;->access$1900(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 706
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$4$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$4;

    iget-object v3, v3, Lcom/android/internal/policy/impl/GlobalActions$4;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # setter for: Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {v3, v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$502(Lcom/android/internal/policy/impl/GlobalActions;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 707
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_3f

    .line 702
    :cond_b7
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d8

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    goto :goto_97

    .line 711
    .end local v0    # "_builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "_dialog":Landroid/app/AlertDialog;
    :cond_c1
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$4$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$4;

    iget-object v3, v3, Lcom/android/internal/policy/impl/GlobalActions$4;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlobalActions;->access$400(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$4$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$4;

    iget-object v3, v3, Lcom/android/internal/policy/impl/GlobalActions$4;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlobalActions;->access$800(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 712
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.settings.action.talkback_off"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 713
    .restart local v2    # "talk_back_off":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$4$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$4;

    iget-object v3, v3, Lcom/android/internal/policy/impl/GlobalActions$4;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlobalActions;->access$800(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 714
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$4$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$4;

    invoke-virtual {v3, v6}, Lcom/android/internal/policy/impl/GlobalActions$4;->changeStateFromPress(Z)V

    goto/16 :goto_3f
.end method
