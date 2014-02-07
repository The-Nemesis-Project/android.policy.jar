.class Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpassKeyConcept"
.end annotation


# static fields
.field private static final FINGERPRINT_KEY_IGNORE_DURATION:I = 0x3e8

.field private static final TAG_SPASS:Ljava/lang/String; = "SpassKeyAction"


# instance fields
.field private final DEBUG:Z

.field private mFingerDetectedKeyDown:Z

.field private mFingerDetectedKeyTime:J

.field private mHomeKeyDown:Z

.field private mIngnoreFingerKey:Z

.field private mSpassStart:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 3346
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3326
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept;->DEBUG:Z

    .line 3332
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept;->mHomeKeyDown:Z

    .line 3333
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept;->mFingerDetectedKeyDown:Z

    .line 3334
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept;->mFingerDetectedKeyTime:J

    .line 3335
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept;->mIngnoreFingerKey:Z

    .line 3337
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept$1;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept;->mSpassStart:Ljava/lang/Runnable;

    .line 3347
    return-void
.end method


# virtual methods
.method public addAction(Landroid/view/KeyEvent;)V
    .registers 10
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 3350
    monitor-enter p0

    .line 3351
    :try_start_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 3352
    .local v3, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_12

    .line 3354
    .local v2, "isDown":Z
    :goto_d
    sparse-switch v3, :sswitch_data_72

    .line 3409
    :cond_10
    :goto_10
    monitor-exit p0

    .line 3410
    return-void

    .end local v2    # "isDown":Z
    :cond_12
    move v2, v4

    .line 3352
    goto :goto_d

    .line 3356
    .restart local v2    # "isDown":Z
    :sswitch_14
    if-eqz v2, :cond_24

    .line 3357
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept;->mHomeKeyDown:Z

    .line 3358
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept;->mFingerDetectedKeyDown:Z

    if-eqz v4, :cond_10

    .line 3359
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept;->mIngnoreFingerKey:Z

    goto :goto_10

    .line 3409
    .end local v2    # "isDown":Z
    .end local v3    # "keyCode":I
    :catchall_21
    move-exception v4

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v4

    .line 3365
    .restart local v2    # "isDown":Z
    .restart local v3    # "keyCode":I
    :cond_24
    const/4 v4, 0x0

    :try_start_25
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept;->mHomeKeyDown:Z

    goto :goto_10

    .line 3373
    :sswitch_28
    if-eqz v2, :cond_10

    .line 3374
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept;->mFingerDetectedKeyDown:Z

    .line 3375
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept;->mFingerDetectedKeyTime:J

    .line 3376
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept;->mIngnoreFingerKey:Z

    .line 3377
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept;->mHomeKeyDown:Z

    if-eqz v4, :cond_10

    .line 3378
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept;->mIngnoreFingerKey:Z

    goto :goto_10

    .line 3387
    :sswitch_3e
    if-nez v2, :cond_10

    .line 3391
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept;->mFingerDetectedKeyTime:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 3392
    .local v0, "gap":J
    const-wide/16 v4, 0x3e8

    cmp-long v4, v0, v4

    if-gez v4, :cond_67

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept;->mIngnoreFingerKey:Z

    if-nez v4, :cond_67

    .line 3393
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept;->mSpassStart:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3394
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept;->mSpassStart:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3404
    :cond_67
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept;->mFingerDetectedKeyTime:J

    .line 3405
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept;->mFingerDetectedKeyDown:Z

    .line 3406
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept;->mIngnoreFingerKey:Z
    :try_end_71
    .catchall {:try_start_25 .. :try_end_71} :catchall_21

    goto :goto_10

    .line 3354
    :sswitch_data_72
    .sparse-switch
        0x3 -> :sswitch_14
        0x10b -> :sswitch_28
        0x10c -> :sswitch_3e
    .end sparse-switch
.end method
