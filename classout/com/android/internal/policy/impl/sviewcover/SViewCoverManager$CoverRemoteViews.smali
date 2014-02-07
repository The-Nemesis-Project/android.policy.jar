.class public Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$CoverRemoteViews;
.super Ljava/lang/Object;
.source "SViewCoverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CoverRemoteViews"
.end annotation


# instance fields
.field public final remoteViews:Landroid/widget/RemoteViews;

.field final synthetic this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

.field public final type:Ljava/lang/String;

.field public final visibility:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;Ljava/lang/String;ZLandroid/widget/RemoteViews;)V
    .registers 5
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "visibility"    # Z
    .param p4, "remoteViews"    # Landroid/widget/RemoteViews;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$CoverRemoteViews;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$CoverRemoteViews;->type:Ljava/lang/String;

    .line 76
    iput-boolean p3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$CoverRemoteViews;->visibility:Z

    .line 77
    iput-object p4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$CoverRemoteViews;->remoteViews:Landroid/widget/RemoteViews;

    .line 78
    return-void
.end method
