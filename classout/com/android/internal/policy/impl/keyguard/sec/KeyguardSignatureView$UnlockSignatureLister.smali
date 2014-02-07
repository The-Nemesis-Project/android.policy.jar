.class Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;
.super Ljava/lang/Object;
.source "KeyguardSignatureView.java"

# interfaces
.implements Lcom/android/internal/widget/SignView$OnSignatureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockSignatureLister"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)V
    .registers 2

    .prologue
    .line 386
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;
    .param p2, "x1"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$1;

    .prologue
    .line 386
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)V

    return-void
.end method


# virtual methods
.method public notifySignServiceError()V
    .registers 4

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignServiceRunningLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$400(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 464
    :try_start_7
    const-string v0, "KeyguardSignatureView"

    const-string v2, "notifySignServiceError start"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$500(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/policy/ISignServiceInterface;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 467
    const-string v0, "KeyguardSignatureView"

    const-string v2, "oh, sign service is alive now, just set to sign view."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$600(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/widget/SignView;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$500(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/policy/ISignServiceInterface;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/SignView;->setSignService(Lcom/android/internal/policy/ISignServiceInterface;)V

    .line 469
    monitor-exit v1

    .line 482
    :goto_2d
    return-void

    .line 472
    :cond_2e
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mServiceConnection:Landroid/content/ServiceConnection;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$1700(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Landroid/content/ServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 473
    const-string v0, "KeyguardSignatureView"

    const-string v2, "onSignServiceError unbind by force."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$1800(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mServiceConnection:Landroid/content/ServiceConnection;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$1700(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 477
    :cond_4c
    const-string v0, "KeyguardSignatureView"

    const-string v2, "onSignServiceError bind sign service by force."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->bindToSignatureLock()V

    .line 479
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    const/4 v2, 0x1

    # setter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mBoundToSignService:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$1902(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;Z)Z

    .line 481
    monitor-exit v1

    goto :goto_2d

    :catchall_60
    move-exception v0

    monitor-exit v1
    :try_end_62
    .catchall {:try_start_7 .. :try_end_62} :catchall_60

    throw v0
.end method

.method public onAddSignFailed(I)V
    .registers 2
    .param p1, "reason"    # I

    .prologue
    .line 457
    return-void
.end method

.method public onAddSignSucceeded(I)V
    .registers 2
    .param p1, "nCount"    # I

    .prologue
    .line 460
    return-void
.end method

.method public onSignatureCleared()V
    .registers 3

    .prologue
    .line 399
    const-string v0, "KeyguardSignatureView"

    const-string v1, "onSignatureCleared is called by SignView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    return-void
.end method

.method public onSignatureDetected()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 409
    const-string v1, "KeyguardSignatureView"

    const-string v2, "onSignatureDetected is called by SignView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$600(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/widget/SignView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/SignView;->getVerifyResult()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 426
    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->DBG:Z
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$1300()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 427
    const-string v1, "KeyguardSignatureView"

    const-string v2, "Signature verification is successful, let\'s unlock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_21
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$IdentifyState;->SUCCESS:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$IdentifyState;

    # setter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mState:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$IdentifyState;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$1102(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$IdentifyState;)Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$IdentifyState;

    .line 430
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$200(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->reportSuccessfulUnlockAttempt()V

    .line 431
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$200(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 454
    :goto_38
    return-void

    .line 433
    :cond_39
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$IdentifyState;->FAIL:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$IdentifyState;

    # setter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mState:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$IdentifyState;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$1102(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$IdentifyState;)Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$IdentifyState;

    .line 435
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    # operator++ for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mFailedAttempts:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$1408(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)I

    .line 437
    const-string v1, "KeyguardSignatureView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sign verification is failed, count("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mFailedAttempts:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$1400(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mFailedAttempts:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$1400(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_83

    .line 441
    const-string v1, "KeyguardSignatureView"

    const-string v2, "user failed to unlock with signature until maximum try, go to unlock screen"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$200(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v1

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Signature:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->showBackupSecurity(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_38

    .line 446
    :cond_83
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$1500(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040864

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, "guideMessage":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$1600(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    move-result-object v1

    invoke-interface {v1, v0, v4}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 451
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$600(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/widget/SignView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/SignView;->setBackgroundColor(I)V

    goto :goto_38
.end method

.method public onSignatureInputting()V
    .registers 4

    .prologue
    .line 403
    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->DBG_TOUCH:Z
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "KeyguardSignatureView"

    const-string v1, "onSignatureInputting is called by SignView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_d
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$200(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 406
    return-void
.end method

.method public onSignatureStart()V
    .registers 3

    .prologue
    .line 388
    const-string v0, "KeyguardSignatureView"

    const-string v1, "onSignatureStart is called by SignView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$600(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/widget/SignView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SignView;->setBackgroundColor(I)V

    .line 393
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$IdentifyState;->INIT:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$IdentifyState;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mState:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$IdentifyState;
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$1100()Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$IdentifyState;

    move-result-object v1

    if-ne v0, v1, :cond_1e

    .line 394
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$IdentifyState;->IDENTIFYING:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$IdentifyState;

    # setter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mState:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$IdentifyState;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$1102(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$IdentifyState;)Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$IdentifyState;

    .line 396
    :cond_1e
    return-void
.end method
