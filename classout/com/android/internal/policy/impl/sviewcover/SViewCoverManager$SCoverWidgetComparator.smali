.class Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SCoverWidgetComparator;
.super Ljava/lang/Object;
.source "SViewCoverManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SCoverWidgetComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SCoverWidget;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)V
    .registers 2

    .prologue
    .line 337
    iput-object p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SCoverWidgetComparator;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SCoverWidget;Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SCoverWidget;)I
    .registers 5
    .param p1, "o1"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SCoverWidget;
    .param p2, "o2"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SCoverWidget;

    .prologue
    .line 340
    iget v0, p1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SCoverWidget;->position:I

    iget v1, p2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SCoverWidget;->position:I

    if-ne v0, v1, :cond_8

    .line 341
    const/4 v0, 0x0

    .line 345
    :goto_7
    return v0

    .line 342
    :cond_8
    iget v0, p1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SCoverWidget;->position:I

    iget v1, p2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SCoverWidget;->position:I

    if-ge v0, v1, :cond_10

    .line 343
    const/4 v0, 0x1

    goto :goto_7

    .line 345
    :cond_10
    const/4 v0, -0x1

    goto :goto_7
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 337
    check-cast p1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SCoverWidget;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SCoverWidget;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SCoverWidgetComparator;->compare(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SCoverWidget;Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SCoverWidget;)I

    move-result v0

    return v0
.end method
