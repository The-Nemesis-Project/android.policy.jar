.class Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HomeKeyDoubleClickConcept"
.end annotation


# static fields
.field public static final TAG_HKDC:Ljava/lang/String; = "HomeKeyDoubleClick"


# instance fields
.field public final DEBUG:Z

.field private mCheckHomeShortDoubleClick:Ljava/lang/Runnable;

.field private mHomeActionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPostDelay:J

.field private mPosted:Z

.field private mSentHomeDownToApp:Z

.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 3884
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3863
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->mPosted:Z

    .line 3864
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    .line 3865
    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->mPostDelay:J

    .line 3867
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->DEBUG:Z

    .line 3870
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept$1;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->mCheckHomeShortDoubleClick:Ljava/lang/Runnable;

    .line 3885
    return-void
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;

    .prologue
    .line 3862
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->isSingleClick()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;

    .prologue
    .line 3862
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->singleClickJob()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;

    .prologue
    .line 3862
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->isDoubleClick()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;

    .prologue
    .line 3862
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->doubleClickJob()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;

    .prologue
    .line 3862
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->reset()V

    return-void
.end method

.method private doubleClickJob()V
    .registers 5

    .prologue
    .line 4072
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isKidsModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 4098
    :cond_8
    :goto_8
    return-void

    .line 4076
    :cond_9
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-boolean v2, v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyDoubleClickUseRecent:Z

    if-eqz v2, :cond_22

    .line 4078
    :try_start_f
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 4079
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_8

    .line 4080
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1a} :catch_1b

    goto :goto_8

    .line 4082
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_1b
    move-exception v0

    .line 4084
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_8

    .line 4089
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_22
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget v2, v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mDoubleTapBehavior:I

    if-gtz v2, :cond_38

    .line 4090
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->intentType()Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->access$903(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)Z

    move-result v3

    if-nez v3, :cond_38

    const-string v2, "HomeKeyDoubleClick"

    const-string v3, "Home double click behavior is disabled"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 4091
    :cond_38
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget v2, v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mDoubleTapBehavior:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_43

    .line 4092
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->startVoiceCommandActivity()V

    goto :goto_8

    .line 4093
    :cond_43
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget v2, v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mDoubleTapBehavior:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4e

    .line 4094
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->startAlwaysActivity()V

    goto :goto_8

    .line 4096
    :cond_4e
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->startVoiceCommandActivity()V

    goto :goto_8
.end method

.method private isDoubleClick()Z
    .registers 5

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3935
    monitor-enter p0

    .line 3936
    :try_start_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_3c

    .line 3937
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_84

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_84

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_84

    .line 3942
    monitor-exit p0

    move v0, v1

    .line 3956
    :goto_3b
    return v0

    .line 3944
    :cond_3c
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_84

    .line 3945
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_84

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_84

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_84

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_84

    .line 3951
    monitor-exit p0

    move v0, v1

    goto :goto_3b

    .line 3954
    :cond_84
    monitor-exit p0

    move v0, v2

    .line 3956
    goto :goto_3b

    .line 3954
    :catchall_87
    move-exception v0

    monitor-exit p0
    :try_end_89
    .catchall {:try_start_4 .. :try_end_89} :catchall_87

    throw v0
.end method

.method private isSingleClick()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3915
    monitor-enter p0

    .line 3916
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_15

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x5

    if-lt v0, v3, :cond_36

    .line 3917
    :cond_15
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_36

    .line 3920
    monitor-exit p0

    move v0, v2

    .line 3926
    :goto_35
    return v0

    .line 3923
    :cond_36
    monitor-exit p0

    move v0, v1

    .line 3926
    goto :goto_35

    .line 3923
    :catchall_39
    move-exception v0

    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw v0
.end method

.method private printList()V
    .registers 6

    .prologue
    .line 3973
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 3974
    .local v0, "buff":Ljava/lang/String;
    const-string v0, "list value = "

    .line 3976
    monitor-enter p0

    .line 3977
    :try_start_8
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3978
    .local v2, "size":I
    if-lez v2, :cond_3d

    .line 3979
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    if-ge v1, v2, :cond_50

    .line 3980
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3979
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 3984
    .end local v1    # "i":I
    :cond_3d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "NONE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3986
    :cond_50
    const-string v3, "HomeKeyDoubleClick"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3987
    monitor-exit p0

    .line 3988
    return-void

    .line 3987
    .end local v2    # "size":I
    :catchall_57
    move-exception v3

    monitor-exit p0
    :try_end_59
    .catchall {:try_start_8 .. :try_end_59} :catchall_57

    throw v3
.end method

.method private reset()V
    .registers 3

    .prologue
    .line 3961
    monitor-enter p0

    .line 3962
    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->mPosted:Z

    if-eqz v0, :cond_e

    .line 3963
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->mCheckHomeShortDoubleClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3965
    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->mSentHomeDownToApp:Z

    .line 3966
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->mPosted:Z

    .line 3967
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3969
    monitor-exit p0

    .line 3970
    return-void

    .line 3969
    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method private singleClickJob()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    .line 3996
    const/4 v1, 0x0

    .line 3997
    .local v1, "incomingRinging":Z
    const/4 v2, 0x0

    .line 4001
    .local v2, "incomingRinging2":Z
    const/4 v4, 0x0

    .line 4002
    .local v4, "isVoIPRinging":Z
    const/4 v3, 0x0

    .line 4004
    .local v3, "isAnyKeyMode":Z
    :try_start_5
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v7

    .line 4005
    .local v7, "voipInterfaceService":Landroid/os/IVoIPInterface;
    if-eqz v7, :cond_51

    .line 4006
    invoke-interface {v7}, Landroid/os/IVoIPInterface;->isVoIPRinging()Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_59

    move-result v4

    .line 4014
    .end local v7    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :goto_f
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v8, v8, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "anykey_mode"

    const/4 v10, -0x2

    invoke-static {v8, v9, v11, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    const/4 v9, 0x1

    if-ge v8, v9, :cond_62

    .line 4015
    const/4 v3, 0x0

    .line 4022
    :goto_22
    :try_start_22
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    .line 4023
    .local v5, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v5, :cond_2c

    .line 4024
    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_2b} :catch_64

    move-result v1

    .line 4030
    .end local v5    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_2c
    :goto_2c
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isDualSIMMode()Z

    move-result v8

    if-eqz v8, :cond_3c

    .line 4032
    :try_start_32
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getTelephonyService2()Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    .line 4033
    .local v6, "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    if-eqz v6, :cond_3c

    .line 4034
    invoke-interface {v6}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_3b} :catch_6d

    move-result v2

    .line 4042
    .end local v6    # "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    :cond_3c
    :goto_3c
    if-eqz v4, :cond_87

    .line 4045
    :try_start_3e
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v7

    .line 4046
    .restart local v7    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    if-eqz v7, :cond_76

    .line 4047
    const-string v8, "SamsungWindowManager"

    const-string v9, "answerVoIPCall() is called."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4048
    invoke-interface {v7}, Landroid/os/IVoIPInterface;->answerVoIPCall()Z
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_4e} :catch_7e

    .line 4068
    .end local v7    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :cond_4e
    :goto_4e
    iput-boolean v11, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->mSentHomeDownToApp:Z

    .line 4069
    return-void

    .line 4008
    .restart local v7    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :cond_51
    :try_start_51
    const-string v8, "SamsungWindowManager"

    const-string v9, "Unable to find IVoIPInterface interface"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_58} :catch_59

    goto :goto_f

    .line 4010
    .end local v7    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :catch_59
    move-exception v0

    .line 4011
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v8, "SamsungWindowManager"

    const-string v9, "RemoteException from getVoIPInterfaceService()"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 4017
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_62
    const/4 v3, 0x1

    goto :goto_22

    .line 4026
    :catch_64
    move-exception v0

    .line 4027
    .restart local v0    # "ex":Landroid/os/RemoteException;
    const-string v8, "SamsungWindowManager"

    const-string v9, "RemoteException from getTelephonyService()"

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c

    .line 4036
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_6d
    move-exception v0

    .line 4037
    .restart local v0    # "ex":Landroid/os/RemoteException;
    const-string v8, "SamsungWindowManager"

    const-string v9, "RemoteException from getTelephonyService2()"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3c

    .line 4050
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v7    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :cond_76
    :try_start_76
    const-string v8, "SamsungWindowManager"

    const-string v9, "Unable to find IVoIPInterface interface"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catch Landroid/os/RemoteException; {:try_start_76 .. :try_end_7d} :catch_7e

    goto :goto_4e

    .line 4052
    .end local v7    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :catch_7e
    move-exception v0

    .line 4053
    .restart local v0    # "ex":Landroid/os/RemoteException;
    const-string v8, "SamsungWindowManager"

    const-string v9, "RemoteException from getVoIPInterfaceService()"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4e

    .line 4057
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_87
    if-nez v1, :cond_8b

    if-eqz v2, :cond_93

    .line 4058
    :cond_8b
    const-string v8, "SamsungWindowManager"

    const-string v9, "Ignoring HOME; there\'s a ringing incoming call."

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    .line 4060
    :cond_93
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->mSentHomeDownToApp:Z

    if-nez v8, :cond_4e

    .line 4062
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v8, v8, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchHomeFromHomeKey()V

    goto :goto_4e
.end method


# virtual methods
.method public addAction(IIZ)V
    .registers 8
    .param p1, "action"    # I
    .param p2, "repeatCount"    # I
    .param p3, "canceled"    # Z

    .prologue
    .line 3890
    monitor-enter p0

    .line 3892
    const/4 v0, 0x1

    if-ne p1, v0, :cond_e

    :try_start_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_e

    .line 3893
    monitor-exit p0

    .line 3910
    :goto_d
    return-void

    .line 3896
    :cond_e
    if-nez p3, :cond_12

    if-eqz p2, :cond_1a

    .line 3898
    :cond_12
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->reset()V

    .line 3899
    monitor-exit p0

    goto :goto_d

    .line 3909
    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_17

    throw v0

    .line 3903
    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3905
    if-nez p1, :cond_31

    .line 3907
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->mCheckHomeShortDoubleClick:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->mPostDelay:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3909
    :cond_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_1a .. :try_end_32} :catchall_17

    goto :goto_d
.end method

.method public setHomeDownEventSent()V
    .registers 2

    .prologue
    .line 4143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->mSentHomeDownToApp:Z

    .line 4144
    return-void
.end method

.method public startAlwaysActivity()V
    .registers 4

    .prologue
    .line 4126
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->mSentHomeDownToApp:Z

    if-nez v0, :cond_29

    .line 4127
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 4128
    const-string v0, "HomeKeyDoubleClick"

    const-string v1, "Always launch"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4129
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const-string v1, "homekey"

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->closeSystemWindows(Ljava/lang/String;)V

    .line 4130
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mAlwaysIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4139
    :cond_29
    :goto_29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->mSentHomeDownToApp:Z

    .line 4140
    return-void

    .line 4133
    :cond_2d
    const-string v0, "HomeKeyDoubleClick"

    const-string v1, "Device is not provisioned, not launch always activity."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29
.end method

.method public startVoiceCommandActivity()V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 4101
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->intentType()Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->access$903(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)Z

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_60

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v1

    .line 4102
    .local v1, "isSecureLock":Z
    :goto_18
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->mSentHomeDownToApp:Z

    if-nez v3, :cond_5d

    .line 4103
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 4105
    :try_start_24
    const-string v3, "HomeKeyDoubleClick"

    const-string v4, "voicetalk launch"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4106
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const-string v4, "homekey"

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->closeSystemWindows(Ljava/lang/String;)V

    .line 4107
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVoiceTalkIntent:Landroid/content/Intent;

    const-string v4, "isSecure"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4108
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v4, v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVoiceTalkIntent:Landroid/content/Intent;

    const-string v5, "AUTO_LISTEN"

    if-nez v1, :cond_62

    const/4 v3, 0x1

    :goto_46
    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4109
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVoiceTalkIntent:Landroid/content/Intent;

    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4110
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVoiceTalkIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_5d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_24 .. :try_end_5d} :catch_64

    .line 4122
    :cond_5d
    :goto_5d
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->mSentHomeDownToApp:Z

    .line 4123
    return-void

    .end local v1    # "isSecureLock":Z
    :cond_60
    move v1, v2

    .line 4101
    goto :goto_18

    .restart local v1    # "isSecureLock":Z
    :cond_62
    move v3, v2

    .line 4108
    goto :goto_46

    .line 4111
    :catch_64
    move-exception v0

    .line 4112
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const-string v3, "HomeKeyDoubleClick"

    const-string v4, "Fail to launch voice talk"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d

    .line 4116
    .end local v0    # "ex":Landroid/content/ActivityNotFoundException;
    :cond_6d
    const-string v3, "HomeKeyDoubleClick"

    const-string v4, "Device is not provisioned, not launch voicetalk."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d
.end method
