.class Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;
.super Ljava/lang/Object;
.source "SViewCoverMissedEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MissedEvent"
.end annotation


# static fields
.field public static final TYPE_CALL:I = 0x1

.field public static final TYPE_MESSAGE:I


# instance fields
.field public callId:Ljava/lang/String;

.field public content:Ljava/lang/String;

.field public id:J

.field public name:Ljava/lang/String;

.field public number:Ljava/lang/String;

.field final synthetic this$1:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

.field public time:J

.field public type:I

.field public unreadCount:I


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;)V
    .registers 2

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->this$1:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;
    .param p2, "x1"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$1;

    .prologue
    .line 272
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;-><init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;)V

    return-void
.end method
