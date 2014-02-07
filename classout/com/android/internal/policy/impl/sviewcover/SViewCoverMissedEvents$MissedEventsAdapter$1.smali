.class Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$1;
.super Ljava/lang/Object;
.source "SViewCoverMissedEvents.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;)V
    .registers 2

    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$1;->this$1:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;)I
    .registers 7
    .param p1, "first"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;
    .param p2, "second"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;

    .prologue
    .line 304
    iget-wide v0, p1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->time:J

    iget-wide v2, p2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->time:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    .line 305
    const/4 v0, 0x0

    .line 306
    :goto_9
    return v0

    :cond_a
    iget-wide v0, p1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->time:J

    iget-wide v2, p2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->time:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    const/4 v0, -0x1

    goto :goto_9

    :cond_14
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 301
    check-cast p1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$1;->compare(Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;)I

    move-result v0

    return v0
.end method
