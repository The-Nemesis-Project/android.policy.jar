.class Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;
.super Ljava/lang/Object;
.source "WakeUpCmdRecognizer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->init()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;


# direct methods
.method constructor <init>(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)V
    .registers 2

    .prologue
    .line 497
    iput-object p1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .prologue
    const/4 v14, 0x6

    const/4 v13, 0x4

    const/4 v12, -0x1

    .line 500
    :goto_3
    :try_start_3
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    # getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_all:Z
    invoke-static {v8}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$100(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Z

    move-result v8

    if-eqz v8, :cond_36

    .line 501
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    # getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_enroll:Z
    invoke-static {v8}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$200(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Z

    move-result v8

    if-nez v8, :cond_37

    .line 503
    const-wide/16 v8, 0xa

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_18} :catch_19

    goto :goto_3

    .line 712
    :catch_19
    move-exception v7

    .line 714
    .local v7, "t":Ljava/lang/Throwable;
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    # getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;
    invoke-static {v8}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$300(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception error in Enroll : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    .end local v7    # "t":Ljava/lang/Throwable;
    :cond_36
    :goto_36
    return-void

    .line 507
    :cond_37
    const/4 v2, 0x0

    .line 508
    .local v2, "iResult":I
    const/4 v6, 0x0

    .line 509
    .local v6, "recResult":I
    const/4 v0, 0x0

    .line 510
    .local v0, "ReENROLL":Z
    const/4 v8, 0x4

    :try_start_3b
    new-array v5, v8, [S

    .line 513
    .local v5, "probINDEX":[S
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    invoke-virtual {v8}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->InitializeEnroll()I

    move-result v8

    if-ne v8, v12, :cond_60

    .line 515
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    const/4 v9, 0x0

    # setter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_enroll:Z
    invoke-static {v8, v9}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$202(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;Z)Z

    .line 516
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    const/4 v9, 0x0

    # setter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_all:Z
    invoke-static {v8, v9}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$102(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;Z)Z

    .line 517
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    invoke-virtual {v8}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TerminateEnroll()I

    .line 518
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    const/16 v9, 0x67

    const/4 v10, 0x0

    const/4 v11, 0x6

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->SendHandlerMessage(III)V

    goto :goto_36

    .line 522
    :cond_60
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    const/16 v9, 0x65

    const/4 v10, 0x0

    const/4 v11, -0x1

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->SendHandlerMessage(III)V

    .line 524
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6a
    if-ge v1, v13, :cond_c0

    .line 526
    const/4 v3, 0x0

    .line 528
    .local v3, "ii":I
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-boolean v8, v8, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v8, :cond_27d

    .line 530
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    # getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;
    invoke-static {v8}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$300(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "background_enroll, WType : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", WMode : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", index : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    invoke-virtual {v8}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sensoryProcessEnroll()I

    move-result v4

    .line 533
    .local v4, "nProcessEnroll":I
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    # getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_enroll:Z
    invoke-static {v8}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$200(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Z

    move-result v8

    if-nez v8, :cond_cd

    .line 535
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    # getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;
    invoke-static {v8}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$300(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "background_enroll, Stop!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    .end local v3    # "ii":I
    .end local v4    # "nProcessEnroll":I
    :cond_c0
    :goto_c0
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    invoke-virtual {v8}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TerminateEnroll()I

    .line 709
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    const/4 v9, 0x0

    # setter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_enroll:Z
    invoke-static {v8, v9}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$202(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;Z)Z

    goto/16 :goto_3

    .line 538
    .restart local v3    # "ii":I
    .restart local v4    # "nProcessEnroll":I
    :cond_cd
    const/4 v8, -0x5

    if-ne v4, v8, :cond_f6

    .line 540
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    # getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;
    invoke-static {v8}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$300(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ERROR: sensoryProcessEnroll : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    const/16 v9, 0x69

    const/4 v10, 0x0

    const/4 v11, -0x1

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->SendHandlerMessage(III)V

    goto :goto_c0

    .line 544
    :cond_f6
    if-gtz v4, :cond_11e

    .line 546
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    # getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;
    invoke-static {v8}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$300(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ERROR: sensoryProcessEnroll : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    const/16 v9, 0x67

    const/4 v10, 0x0

    const/4 v11, 0x6

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->SendHandlerMessage(III)V

    goto :goto_c0

    .line 551
    :cond_11e
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-object v8, v8, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    if-eqz v8, :cond_157

    .line 553
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    # getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;
    invoke-static {v8}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$300(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "background_enroll, Lock process"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    const/4 v9, 0x1

    # setter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isLockProcess:Z
    invoke-static {v8, v9}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$402(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;Z)Z

    .line 555
    if-nez v0, :cond_22f

    .line 557
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-object v8, v8, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    add-int/lit8 v9, v1, 0x1

    int-to-short v9, v9

    iget-object v10, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-short v10, v10, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->CommandNumber:S

    invoke-virtual {v8, v9, v10}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->checkResultEnroll(SS)I

    move-result v6

    .line 564
    :goto_146
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    # getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;
    invoke-static {v8}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$300(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "background_enroll, Unlock process"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    const/4 v9, 0x0

    # setter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isLockProcess:Z
    invoke-static {v8, v9}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$402(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;Z)Z

    .line 568
    :cond_157
    if-nez v6, :cond_262

    .line 570
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-boolean v8, v8, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sensoryUDTSIDThreadEnable:Z

    if-eqz v8, :cond_160

    .line 572
    const/4 v2, -0x1

    .line 594
    .end local v4    # "nProcessEnroll":I
    :cond_160
    :goto_160
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    # getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;
    invoke-static {v8}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$300(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "secMM: ProcessEnroll.result : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    if-ne v2, v13, :cond_200

    .line 598
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    const/16 v9, 0x66

    const/4 v10, 0x0

    const/4 v11, -0x1

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->SendHandlerMessage(III)V

    .line 600
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-boolean v8, v8, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v8, :cond_285

    .line 602
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-boolean v8, v8, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sensoryUDTSIDThreadEnable:Z

    if-eqz v8, :cond_1a2

    .line 604
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-object v8, v8, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    iget-object v9, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-short v9, v9, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->CommandNumber:S

    add-int/lit8 v9, v9, -0x1

    int-to-short v9, v9

    invoke-virtual {v8, v9, v5, v6}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->consistencyCheckEnroll(S[SI)I

    move-result v3

    .line 615
    :cond_1a2
    :goto_1a2
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    # getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;
    invoke-static {v8}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$300(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "consistencyCheckEnroll.result : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    if-ne v3, v13, :cond_2b4

    .line 619
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-boolean v8, v8, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v8, :cond_29b

    .line 621
    const/4 v0, 0x0

    .line 623
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-boolean v8, v8, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sensoryUDTSIDThreadEnable:Z

    if-eqz v8, :cond_1f6

    .line 625
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    # getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;
    invoke-static {v8}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$300(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "secMM: Start doEnroll"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-object v8, v8, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    if-eqz v8, :cond_1eb

    .line 628
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-object v8, v8, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    sget-object v9, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    iget-object v10, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-short v10, v10, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->CommandNumber:S

    invoke-virtual {v8, v9, v10}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->doEnrollModel(Ljava/lang/String;S)I

    .line 630
    :cond_1eb
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    # getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;
    invoke-static {v8}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$300(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "secMM: End doEnroll"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :cond_1f6
    :goto_1f6
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    const/16 v9, 0x67

    const/4 v10, 0x0

    aget-short v10, v5, v10

    invoke-virtual {v8, v9, v10, v3}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->SendHandlerMessage(III)V

    .line 661
    :cond_200
    if-ne v2, v12, :cond_2c3

    .line 663
    add-int/lit8 v1, v1, -0x1

    .line 684
    :cond_204
    :goto_204
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-boolean v8, v8, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v8, :cond_2ef

    .line 686
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-boolean v8, v8, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sensoryUDTSIDThreadEnable:Z

    if-eqz v8, :cond_21a

    .line 688
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    const/16 v9, 0x65

    add-int/lit8 v10, v1, 0x1

    const/4 v11, -0x1

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->SendHandlerMessage(III)V

    .line 696
    :cond_21a
    :goto_21a
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-boolean v8, v8, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v8, :cond_226

    .line 698
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-boolean v8, v8, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sensoryUDTSIDThreadEnable:Z

    if-eqz v8, :cond_c0

    .line 704
    :cond_226
    const-wide/16 v8, 0x64

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 524
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6a

    .line 561
    .restart local v4    # "nProcessEnroll":I
    :cond_22f
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    # getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;
    invoke-static {v8}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$300(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "VSG: ReENROLL for index : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget-short v10, v5, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-object v8, v8, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    const/4 v9, 0x0

    aget-short v9, v5, v9

    add-int/lit8 v9, v9, 0x1

    int-to-short v9, v9

    iget-object v10, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-short v10, v10, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->CommandNumber:S

    invoke-virtual {v8, v9, v10}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->checkResultEnroll(SS)I

    move-result v6

    goto/16 :goto_146

    .line 575
    :cond_262
    const/4 v8, 0x1

    if-ne v6, v8, :cond_269

    .line 577
    add-int/lit8 v2, v1, 0x1

    goto/16 :goto_160

    .line 579
    :cond_269
    const/4 v8, 0x2

    if-lt v6, v8, :cond_26f

    .line 581
    const/4 v2, 0x4

    goto/16 :goto_160

    .line 583
    :cond_26f
    if-gez v6, :cond_160

    .line 585
    const/4 v2, -0x3

    .line 586
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    const/16 v9, 0x67

    const/4 v10, 0x0

    const/4 v11, 0x6

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->SendHandlerMessage(III)V

    goto/16 :goto_160

    .line 591
    .end local v4    # "nProcessEnroll":I
    :cond_27d
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    invoke-virtual {v8}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ProcessEnroll()I

    move-result v2

    goto/16 :goto_160

    .line 609
    :cond_285
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-object v8, v8, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    if-eqz v8, :cond_1a2

    .line 611
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-object v8, v8, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    sget-object v9, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    iget-object v10, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-short v10, v10, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->CommandNumber:S

    invoke-virtual {v8, v9, v10}, Lcom/samsung/voiceshell/VoiceEngine;->consistencyCheckEnroll(Ljava/lang/String;S)I

    move-result v3

    goto/16 :goto_1a2

    .line 635
    :cond_29b
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-object v8, v8, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    sget-object v9, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    const/4 v10, 0x4

    iget-object v11, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-short v11, v11, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->CommandNumber:S

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/voiceshell/VoiceEngine;->setModelStatus(Ljava/lang/String;IS)I

    .line 636
    sget-object v8, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mExist:[I

    iget-object v9, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-short v9, v9, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->CommandNumber:S

    const/4 v10, 0x1

    aput v10, v8, v9

    goto/16 :goto_1f6

    .line 642
    :cond_2b4
    const/4 v8, 0x5

    if-ne v3, v8, :cond_2bc

    .line 646
    add-int/lit8 v1, v1, -0x1

    .line 647
    const/4 v0, 0x1

    goto/16 :goto_1f6

    .line 649
    :cond_2bc
    if-lt v3, v14, :cond_1f6

    .line 653
    const/4 v1, -0x1

    .line 654
    const/4 v2, -0x3

    .line 655
    const/4 v0, 0x0

    goto/16 :goto_1f6

    .line 665
    :cond_2c3
    const/4 v8, -0x2

    if-ne v2, v8, :cond_2ca

    .line 667
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_204

    .line 669
    :cond_2ca
    const/4 v8, -0x3

    if-eq v2, v8, :cond_c0

    .line 673
    const/4 v8, -0x4

    if-ne v2, v8, :cond_2e1

    .line 675
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    const/16 v9, 0x68

    iget-object v10, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-object v10, v10, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->conflictCommandType:[S

    const/4 v11, 0x0

    aget-short v10, v10, v11

    const/4 v11, -0x1

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->SendHandlerMessage(III)V

    goto/16 :goto_c0

    .line 678
    :cond_2e1
    const/4 v8, -0x5

    if-ne v2, v8, :cond_204

    .line 680
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    const/16 v9, 0x69

    const/4 v10, 0x0

    const/4 v11, -0x1

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->SendHandlerMessage(III)V

    goto/16 :goto_c0

    .line 693
    :cond_2ef
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    const/16 v9, 0x65

    add-int/lit8 v10, v1, 0x1

    const/4 v11, -0x1

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->SendHandlerMessage(III)V
    :try_end_2f9
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_2f9} :catch_19

    goto/16 :goto_21a
.end method
