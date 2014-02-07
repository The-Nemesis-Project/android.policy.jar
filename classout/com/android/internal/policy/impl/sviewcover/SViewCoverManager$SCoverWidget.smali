.class Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SCoverWidget;
.super Ljava/lang/Object;
.source "SViewCoverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SCoverWidget"
.end annotation


# instance fields
.field id:I

.field packageName:Ljava/lang/String;

.field position:I

.field remoteViews:Landroid/widget/RemoteViews;

.field final synthetic this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

.field view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)V
    .registers 3

    .prologue
    .line 321
    iput-object p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SCoverWidget;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 322
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SCoverWidget;->view:Landroid/view/View;

    return-void
.end method


# virtual methods
.method isAttached()Z
    .registers 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SCoverWidget;->view:Landroid/view/View;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SCoverWidget;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
