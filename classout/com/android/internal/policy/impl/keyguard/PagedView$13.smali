.class Lcom/android/internal/policy/impl/keyguard/PagedView$13;
.super Ljava/lang/Object;
.source "PagedView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/sec/AirGestureMonitor$AirGestureMonitorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/PagedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/PagedView;)V
    .registers 2

    .prologue
    .line 2643
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$13;->this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleAirMove(Z)V
    .registers 3
    .param p1, "isLeft"    # Z

    .prologue
    .line 2646
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$13;->this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->moveByAirMove(Z)V

    .line 2647
    return-void
.end method
