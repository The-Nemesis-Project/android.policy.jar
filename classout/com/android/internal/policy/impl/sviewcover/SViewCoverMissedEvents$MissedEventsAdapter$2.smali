.class Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$2;
.super Landroid/database/ContentObserver;
.source "SViewCoverMissedEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->buildObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Landroid/os/Handler;)V
    .registers 3
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$2;->this$1:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 330
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onChange()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const-string v0, "time_12_24"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 333
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$2;->this$1:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->notifyDataSetChanged()V

    .line 338
    :goto_1a
    return-void

    .line 335
    :cond_1b
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$2;->this$1:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mUpdated:Z

    .line 336
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$2;->this$1:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->updateMissedEvents()V

    goto :goto_1a
.end method
