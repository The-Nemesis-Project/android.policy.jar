.class Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$1;
.super Ljava/lang/Object;
.source "SViewCoverMissedEvents.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;)V
    .registers 2

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mAdapder:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->access$000(Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;)Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->onItemClick(I)V

    .line 224
    return-void
.end method
