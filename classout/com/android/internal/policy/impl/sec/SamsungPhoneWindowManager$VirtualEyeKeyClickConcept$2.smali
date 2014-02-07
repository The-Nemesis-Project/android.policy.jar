.class Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept$2;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;)V
    .registers 2

    .prologue
    .line 3690
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept$2;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 3692
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept$2;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;

    # invokes: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;->isSingleClick()Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;->access$1800(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 3693
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept$2;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;

    iget-object v2, v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;->mUltrasonicService:Landroid/os/Messenger;

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept$2;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;

    # getter for: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;->mUltrasonicToggleFlag:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;->access$1900(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 3695
    const/4 v2, 0x0

    const/4 v3, 0x3

    :try_start_1a
    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 3696
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept$2;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;

    iget-object v2, v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;->mUltrasonicMessenger:Landroid/os/Messenger;

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 3697
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept$2;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;

    iget-object v2, v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;->mUltrasonicService:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_2b} :catch_31

    .line 3730
    .end local v1    # "msg":Landroid/os/Message;
    :cond_2b
    :goto_2b
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept$2;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;

    # invokes: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;->reset()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;->access$2100(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;)V

    .line 3731
    return-void

    .line 3698
    :catch_31
    move-exception v0

    .line 3699
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "VirtualEyeKeyClick"

    const-string v3, "RemoteException Single click of Virtual key"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 3702
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3a
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept$2;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;

    # invokes: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;->isDoubleClick()Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;->access$2000(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 3703
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept$2;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;

    # getter for: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;->mUltrasonicToggleFlag:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;->access$1900(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;)Z

    move-result v2

    if-nez v2, :cond_8b

    .line 3704
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept$2;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;

    # setter for: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;->mUltrasonicToggleFlag:Z
    invoke-static {v2, v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;->access$1902(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;Z)Z

    .line 3705
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept$2;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;

    iget-object v2, v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;->mUltrasonicService:Landroid/os/Messenger;

    if-nez v2, :cond_69

    .line 3706
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept$2;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;

    iget-object v2, v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept$2;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mUltrasonicIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept$2;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;

    iget-object v4, v4, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_2b

    .line 3709
    :cond_69
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_6b
    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 3710
    .restart local v1    # "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept$2;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;

    iget-object v2, v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;->mUltrasonicMessenger:Landroid/os/Messenger;

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 3711
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept$2;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;

    iget-object v2, v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;->mUltrasonicService:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_7c
    .catch Landroid/os/RemoteException; {:try_start_6b .. :try_end_7c} :catch_7d

    goto :goto_2b

    .line 3712
    .end local v1    # "msg":Landroid/os/Message;
    :catch_7d
    move-exception v0

    .line 3713
    .restart local v0    # "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept$2;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;

    # setter for: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;->mUltrasonicToggleFlag:Z
    invoke-static {v2, v4}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;->access$1902(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;Z)Z

    .line 3714
    const-string v2, "VirtualEyeKeyClick"

    const-string v3, "RemoteException Double click of Virtual key INIT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 3718
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_8b
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept$2;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;

    # setter for: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;->mUltrasonicToggleFlag:Z
    invoke-static {v2, v4}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;->access$1902(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;Z)Z

    .line 3719
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept$2;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;

    iget-object v2, v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;->mUltrasonicService:Landroid/os/Messenger;

    if-eqz v2, :cond_2b

    .line 3721
    const/4 v2, 0x0

    const/4 v3, 0x2

    :try_start_98
    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 3722
    .restart local v1    # "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept$2;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;

    iget-object v2, v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;->mUltrasonicMessenger:Landroid/os/Messenger;

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 3723
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept$2;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;

    iget-object v2, v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;->mUltrasonicService:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_a9
    .catch Landroid/os/RemoteException; {:try_start_98 .. :try_end_a9} :catch_aa

    goto :goto_2b

    .line 3724
    .end local v1    # "msg":Landroid/os/Message;
    :catch_aa
    move-exception v0

    .line 3725
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v2, "VirtualEyeKeyClick"

    const-string v3, "RemoteException Single click of Virtual key RELEASE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2b
.end method
