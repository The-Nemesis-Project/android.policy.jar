.class public Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SViewCoverManagerCallback;
.super Ljava/lang/Object;
.source "SViewCoverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SViewCoverManagerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)V
    .registers 2

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SViewCoverManagerCallback;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method onPagerTouchDowned()V
    .registers 1

    .prologue
    .line 92
    return-void
.end method
