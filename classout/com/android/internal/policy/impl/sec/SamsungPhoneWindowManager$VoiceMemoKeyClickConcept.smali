.class Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoiceMemoKeyClickConcept"
.end annotation


# static fields
.field private static final TAG_VMKC:Ljava/lang/String; = "VoiceMemoKeyClick"


# instance fields
.field private final DEBUG:Z

.field private mCheckVoiceMemoKeyDoubleClick:Ljava/lang/Runnable;

.field private mPostDelay:J

.field private mPosted:Z

.field private mVoiceMemoKeyActionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mVoiceMemoKeyLongPress:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 3553
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3528
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;->mPosted:Z

    .line 3529
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;->mVoiceMemoKeyActionList:Ljava/util/List;

    .line 3530
    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;->mPostDelay:J

    .line 3531
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;->DEBUG:Z

    .line 3534
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept$1;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;->mCheckVoiceMemoKeyDoubleClick:Ljava/lang/Runnable;

    .line 3545
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept$2;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;->mVoiceMemoKeyLongPress:Ljava/lang/Runnable;

    .line 3554
    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;

    .prologue
    .line 3527
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;->isDoubleClick()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;

    .prologue
    .line 3527
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;->reset()V

    return-void
.end method

.method private isDoubleClick()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3603
    monitor-enter p0

    .line 3604
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;->mVoiceMemoKeyActionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_4b

    .line 3605
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;->mVoiceMemoKeyActionList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_4b

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;->mVoiceMemoKeyActionList:Ljava/util/List;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_4b

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;->mVoiceMemoKeyActionList:Ljava/util/List;

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_4b

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;->mVoiceMemoKeyActionList:Ljava/util/List;

    const/4 v3, 0x3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_4b

    .line 3612
    monitor-exit p0

    move v0, v1

    .line 3619
    :goto_4a
    return v0

    .line 3615
    :cond_4b
    monitor-exit p0

    move v0, v2

    .line 3619
    goto :goto_4a

    .line 3615
    :catchall_4e
    move-exception v0

    monitor-exit p0
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_4e

    throw v0
.end method

.method private isLongPress(I)Z
    .registers 3
    .param p1, "repeatCount"    # I

    .prologue
    const/4 v0, 0x1

    .line 3626
    if-ne p1, v0, :cond_4

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private reset()V
    .registers 3

    .prologue
    .line 3633
    monitor-enter p0

    .line 3634
    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;->mPosted:Z

    if-eqz v0, :cond_e

    .line 3635
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;->mCheckVoiceMemoKeyDoubleClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3637
    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;->mPosted:Z

    .line 3638
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;->mVoiceMemoKeyActionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3642
    monitor-exit p0

    .line 3643
    return-void

    .line 3642
    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw v0
.end method


# virtual methods
.method public addAction(IIZ)V
    .registers 8
    .param p1, "action"    # I
    .param p2, "repeatCount"    # I
    .param p3, "canceled"    # Z

    .prologue
    .line 3561
    monitor-enter p0

    .line 3563
    const/4 v0, 0x1

    if-ne p1, v0, :cond_e

    :try_start_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;->mVoiceMemoKeyActionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_e

    .line 3564
    monitor-exit p0

    .line 3596
    :goto_d
    return-void

    .line 3567
    :cond_e
    if-eqz p3, :cond_18

    .line 3571
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;->reset()V

    .line 3572
    monitor-exit p0

    goto :goto_d

    .line 3595
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_15

    throw v0

    .line 3575
    :cond_18
    :try_start_18
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;->isLongPress(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 3579
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;->mVoiceMemoKeyLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3580
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;->reset()V

    .line 3581
    monitor-exit p0

    goto :goto_d

    .line 3587
    :cond_2c
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;->mVoiceMemoKeyActionList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3589
    if-nez p1, :cond_42

    .line 3593
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;->mCheckVoiceMemoKeyDoubleClick:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;->mPostDelay:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3595
    :cond_42
    monitor-exit p0
    :try_end_43
    .catchall {:try_start_18 .. :try_end_43} :catchall_15

    goto :goto_d
.end method
