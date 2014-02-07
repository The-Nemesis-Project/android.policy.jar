.class Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$2;
.super Landroid/content/BroadcastReceiver;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V
    .registers 2

    .prologue
    .line 422
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 424
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 425
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 426
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iput-boolean v6, v4, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mBootCompleted:Z

    .line 429
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getCoverState()I

    move-result v1

    .line 430
    .local v1, "coverState":I
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget v4, v4, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCoverState:I

    if-eq v1, v4, :cond_2a

    .line 431
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    if-nez v1, :cond_5c

    move v4, v5

    :goto_27
    invoke-virtual {v7, v8, v9, v4}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->notifyCoverSwitchChanged(JZ)V

    .line 435
    :cond_2a
    invoke-static {p1}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 436
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getPenState()I

    move-result v3

    .line 437
    .local v3, "penState":I
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget v4, v4, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenState:I

    if-eq v3, v4, :cond_46

    .line 438
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    if-ne v3, v6, :cond_5e

    move v4, v6

    :goto_43
    invoke-virtual {v7, v8, v9, v4}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->notifyPenSwitchChanged(JZ)V

    .line 443
    .end local v3    # "penState":I
    :cond_46
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getGloveState()I

    move-result v2

    .line 444
    .local v2, "gloveState":I
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget v4, v4, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mGloveState:I

    if-eq v2, v4, :cond_5b

    .line 445
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    if-ne v2, v6, :cond_60

    :goto_58
    invoke-virtual {v4, v8, v9, v6}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->notifyGloveSwitchChanged(JZ)V

    .line 448
    .end local v1    # "coverState":I
    .end local v2    # "gloveState":I
    :cond_5b
    return-void

    .restart local v1    # "coverState":I
    :cond_5c
    move v4, v6

    .line 431
    goto :goto_27

    .restart local v3    # "penState":I
    :cond_5e
    move v4, v5

    .line 438
    goto :goto_43

    .end local v3    # "penState":I
    .restart local v2    # "gloveState":I
    :cond_60
    move v6, v5

    .line 445
    goto :goto_58
.end method
