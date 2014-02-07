.class Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$10;
.super Landroid/widget/RemoteViews$OnClickHandler;
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
    .line 1391
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$10;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-direct {p0}, Landroid/widget/RemoteViews$OnClickHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .registers 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "fillInIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 1396
    invoke-virtual {p2}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v3

    if-nez v3, :cond_26

    invoke-static {p2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isKoreaPatentIssue(Landroid/app/PendingIntent;)Z

    move-result v3

    if-nez v3, :cond_26

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isGERFeature()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-static {p2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isShortcutDAWithPendingIntent(Landroid/app/PendingIntent;)Z

    move-result v3

    if-nez v3, :cond_26

    :cond_1a
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isAUSFeature()Z

    move-result v3

    if-eqz v3, :cond_9c

    invoke-static {p2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isShortcutDAWithPendingIntent(Landroid/app/PendingIntent;)Z

    move-result v3

    if-eqz v3, :cond_9c

    .line 1400
    :cond_26
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$10;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$10$1;

    invoke-direct {v4, p0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$10$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$10;Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)V

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->setOnDismissAction(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;)V

    .line 1423
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$10;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsCoverLockEnabled:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$2600(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Z

    move-result v3

    if-eqz v3, :cond_5e

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$10;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$2000(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v3

    sget-object v4, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v3, v4, :cond_5e

    .line 1424
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$10;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$2700(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    .line 1426
    .local v1, "securityMode":Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v1, v3, :cond_5e

    sget-object v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v1, v3, :cond_5e

    .line 1427
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$10;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$1400(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v3

    invoke-interface {v3, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 1445
    .end local v1    # "securityMode":Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    :goto_5d
    return v2

    .line 1432
    :cond_5e
    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$500()Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->isChallengeShowing()Z

    move-result v3

    if-nez v3, :cond_7a

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v3

    if-nez v3, :cond_7a

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isGERFeature()Z

    move-result v3

    if-nez v3, :cond_7a

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isAUSFeature()Z

    move-result v3

    if-eqz v3, :cond_82

    .line 1434
    :cond_7a
    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$500()Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->showBouncer(Z)V

    goto :goto_5d

    .line 1437
    :cond_82
    :try_start_82
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_89
    .catch Landroid/os/RemoteException; {:try_start_82 .. :try_end_89} :catch_93

    .line 1441
    :goto_89
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$10;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$1400(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v3

    invoke-interface {v3, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    goto :goto_5d

    .line 1438
    :catch_93
    move-exception v0

    .line 1439
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "KeyguardHostView"

    const-string v4, "can\'t dismiss keyguard on launch"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_89

    .line 1445
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_9c
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RemoteViews$OnClickHandler;->onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result v2

    goto :goto_5d
.end method
