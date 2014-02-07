.class Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$2;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardHostView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V
    .registers 2

    .prologue
    .line 456
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public goToUnlockScreenForDetachPen()V
    .registers 3

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->isSecure()Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 481
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->keyguardDone(Z)V

    .line 483
    :cond_10
    return-void
.end method

.method public onBootCompleted()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 460
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCleanupAppWidgetsOnBootCompleted:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 461
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->cleanupAppWidgetIds()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    .line 462
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    # setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCleanupAppWidgetsOnBootCompleted:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$202(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;Z)Z

    .line 464
    :cond_13
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCheckAppWidgetConsistencyOnBootCompleted:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 465
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->checkAppWidgetConsistency()V

    .line 466
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 467
    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$500()Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->showUsabilityHints()V

    .line 468
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    # setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCheckAppWidgetConsistencyOnBootCompleted:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$402(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;Z)Z

    .line 471
    :cond_33
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSetGloveModeOnBootCompleted:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Z

    move-result v0

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsGloveTouchOn:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Z

    move-result v0

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 473
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    const/4 v1, 0x1

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->setGloveMode(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;Z)V

    .line 474
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    # setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSetGloveModeOnBootCompleted:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$602(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;Z)Z

    .line 476
    :cond_5e
    return-void
.end method

.method onMusicClientIdChanged(IZLandroid/app/PendingIntent;)V
    .registers 8
    .param p1, "clientGeneration"    # I
    .param p2, "clearing"    # Z
    .param p3, "intent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v0, 0x2

    .line 495
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUGXPORT:Z

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    iget v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mClientGeneration:I

    if-ne v1, p1, :cond_d

    if-eqz p2, :cond_2d

    .line 496
    :cond_d
    const-string v2, "KeyguardHostView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_56

    const-string v1, "hide"

    :goto_18
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " transport, gen:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_2d
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    iput p1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mClientGeneration:I

    .line 499
    if-eqz p2, :cond_59

    const/4 v0, 0x0

    .line 502
    .local v0, "newState":I
    :cond_34
    :goto_34
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportState:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)I

    move-result v1

    if-eq v0, v1, :cond_55

    .line 503
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    # setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportState:I
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$1102(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;I)I

    .line 504
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUGXPORT:Z

    if-eqz v1, :cond_4c

    const-string v1, "KeyguardHostView"

    const-string v2, "update widget: transport state changed"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :cond_4c
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->post(Ljava/lang/Runnable;)Z

    .line 507
    :cond_55
    return-void

    .line 496
    .end local v0    # "newState":I
    :cond_56
    const-string v1, "show"

    goto :goto_18

    .line 499
    :cond_59
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportState:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)I

    move-result v1

    if-eq v1, v0, :cond_34

    const/4 v0, 0x1

    goto :goto_34
.end method

.method public onMusicPlaybackStateChanged(IJ)V
    .registers 8
    .param p1, "playbackState"    # I
    .param p2, "eventTime"    # J

    .prologue
    .line 510
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUGXPORT:Z

    if-eqz v1, :cond_1c

    const-string v1, "KeyguardHostView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "music state changed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_1c
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportState:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)I

    move-result v1

    if-eqz v1, :cond_4c

    .line 512
    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->isMusicPlaying(I)Z
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$1200(I)Z

    move-result v1

    if-eqz v1, :cond_4d

    const/4 v0, 0x2

    .line 514
    .local v0, "newState":I
    :goto_2b
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportState:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)I

    move-result v1

    if-eq v0, v1, :cond_4c

    .line 515
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    # setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportState:I
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$1102(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;I)I

    .line 516
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUGXPORT:Z

    if-eqz v1, :cond_43

    const-string v1, "KeyguardHostView"

    const-string v2, "update widget: play state changed"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_43
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->post(Ljava/lang/Runnable;)Z

    .line 520
    .end local v0    # "newState":I
    :cond_4c
    return-void

    .line 512
    :cond_4d
    const/4 v0, 0x1

    goto :goto_2b
.end method

.method public onUserSwitchComplete(I)V
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 487
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->finalizeActiveUserView(Z)V

    .line 489
    :cond_12
    return-void
.end method
