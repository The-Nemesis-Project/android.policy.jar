.class Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$3;
.super Ljava/lang/Object;
.source "SViewCoverManager.java"

# interfaces
.implements Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)V
    .registers 2

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$3;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMissedEventsExists(Z)V
    .registers 5
    .param p1, "b"    # Z

    .prologue
    .line 162
    const-string v0, "SViewCoverManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMissedCallbacks.onMissedEventsExists: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$3;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewPager:Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$300(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 164
    if-eqz p1, :cond_2d

    .line 165
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$3;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mNeedToAddMissedEventWidget:Z

    .line 169
    :goto_27
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$3;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    # invokes: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->updateMissedEventWidget()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$400(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)V

    .line 171
    :cond_2c
    return-void

    .line 167
    :cond_2d
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$3;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mNeedToAddMissedEventWidget:Z

    goto :goto_27
.end method
