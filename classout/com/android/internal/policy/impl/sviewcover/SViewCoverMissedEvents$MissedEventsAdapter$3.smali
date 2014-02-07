.class Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$3;
.super Landroid/content/BroadcastReceiver;
.source "SViewCoverMissedEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->buildReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;)V
    .registers 2

    .prologue
    .line 344
    iput-object p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$3;->this$1:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 347
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 349
    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$3;->this$1:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$3;->this$1:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$3;->this$1:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    iget-object v5, v5, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->access$300(Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getPreviewMesagePreference(Landroid/content/Context;)Z

    move-result v4

    # setter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mIsPreview:Z
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->access$202(Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Z)Z

    .line 350
    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$3;->this$1:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    const/4 v4, 0x1

    # setter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mIsBootCompleted:Z
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->access$402(Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Z)Z

    .line 351
    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$3;->this$1:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mAdapder:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;
    invoke-static {v3}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->access$000(Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;)Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->updateMissedEvents()V

    .line 369
    :goto_30
    return-void

    .line 353
    :cond_31
    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 355
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 356
    .local v2, "id":I
    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$3;->this$1:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    const/4 v4, 0x0

    # setter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mCurrentUserContext:Landroid/content/Context;
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->access$502(Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Landroid/content/Context;)Landroid/content/Context;

    .line 357
    if-eqz v2, :cond_5e

    .line 359
    :try_start_45
    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$3;->this$1:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$3;->this$1:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    iget-object v4, v4, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->access$600(Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "android"

    const/4 v6, 0x0

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v4

    # setter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mCurrentUserContext:Landroid/content/Context;
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->access$502(Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Landroid/content/Context;)Landroid/content/Context;
    :try_end_5e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_45 .. :try_end_5e} :catch_64

    .line 367
    .end local v2    # "id":I
    :cond_5e
    :goto_5e
    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$3;->this$1:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->notifyDataSetChanged()V

    goto :goto_30

    .line 362
    .restart local v2    # "id":I
    :catch_64
    move-exception v1

    .line 363
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error creating user context, id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e
.end method
