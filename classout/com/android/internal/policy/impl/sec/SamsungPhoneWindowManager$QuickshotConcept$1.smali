.class Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept$1;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;->handleEvent(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;

.field final synthetic val$policy:I


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;I)V
    .registers 3

    .prologue
    .line 4383
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept$1;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;

    iput p2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept$1;->val$policy:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 4385
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept$1;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    const/4 v4, 0x0

    const/16 v5, 0xa

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 4386
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    monitor-enter v4

    .line 4388
    :try_start_10
    const-string v3, "Quickshot"

    const-string v5, "Runnable: Called. [BEGIN]"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4391
    iget v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept$1;->val$policy:I
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_11f

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_36

    .line 4394
    :try_start_1d
    const-string v3, "Quickshot"

    const-string v5, "handle: QUICKSHOT_POLICY_AM_WAKE_UP"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4397
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->wakingUp()V

    .line 4398
    iget v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept$1;->val$policy:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_113

    .line 4400
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept$1;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;->dismissKeyguardLw()V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_36} :catch_11c
    .catchall {:try_start_1d .. :try_end_36} :catchall_11f

    .line 4407
    :cond_36
    :goto_36
    :try_start_36
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_11f

    .line 4409
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept$1;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenOnFully()Z

    move-result v2

    .line 4410
    .local v2, "isScreenOnFully":Z
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept$1;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    .line 4413
    .local v1, "isScreenOn":Z
    const-string v3, "Quickshot"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Runnable: isShowing()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept$1;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;

    iget-object v5, v5, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isShowingAndNotHidden()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept$1;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;

    iget-object v5, v5, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isSecure()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept$1;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;

    iget-object v5, v5, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isSecure()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4418
    const-string v3, "Quickshot"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Runnable: isScreenOnFully="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isScreenOn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isCameraOnTop()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept$1;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;

    iget-object v5, v5, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isCameraOnTop()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4423
    iget v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept$1;->val$policy:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_d6

    .line 4425
    const-string v3, "Quickshot"

    const-string v4, "Runnable: QUICKSHOT_POLICY_DISMISS_KEYGUARD"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4431
    :cond_d6
    iget v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept$1;->val$policy:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_10b

    .line 4433
    const-string v3, "Quickshot"

    const-string v4, "Runnable: QUICKSHOT_POLICY_LAUNCH"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4436
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept$1;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isSecure()Z

    move-result v3

    if-eqz v3, :cond_122

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept$1;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;

    # getter for: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;->mCameraSecureIntent:Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;->access$2300(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;)Landroid/content/Intent;

    move-result-object v0

    .line 4437
    .local v0, "intent":Landroid/content/Intent;
    :goto_f5
    iget v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept$1;->val$policy:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_129

    .line 4438
    const-string v3, "quickaccess_mode"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4443
    :goto_100
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept$1;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4447
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_10b
    const-string v3, "Quickshot"

    const-string v4, "Runnable: Called. [END]"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4449
    return-void

    .line 4402
    .end local v1    # "isScreenOn":Z
    .end local v2    # "isScreenOnFully":Z
    :cond_113
    :try_start_113
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_11a
    .catch Landroid/os/RemoteException; {:try_start_113 .. :try_end_11a} :catch_11c
    .catchall {:try_start_113 .. :try_end_11a} :catchall_11f

    goto/16 :goto_36

    .line 4404
    :catch_11c
    move-exception v3

    goto/16 :goto_36

    .line 4407
    :catchall_11f
    move-exception v3

    :try_start_120
    monitor-exit v4
    :try_end_121
    .catchall {:try_start_120 .. :try_end_121} :catchall_11f

    throw v3

    .line 4436
    .restart local v1    # "isScreenOn":Z
    .restart local v2    # "isScreenOnFully":Z
    :cond_122
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept$1;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;

    # getter for: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;->mCameraIntent:Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;->access$2400(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_f5

    .line 4440
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_129
    const-string v3, "quickaccess_mode"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_100
.end method
