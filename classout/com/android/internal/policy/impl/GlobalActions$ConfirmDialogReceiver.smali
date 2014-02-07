.class Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfirmDialogReceiver"
.end annotation


# instance fields
.field contextInternal:Landroid/content/Context;

.field dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2285
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2286
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.systemui.statusbar.EXPANDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2287
    .local v0, "filter":Landroid/content/IntentFilter;
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;->contextInternal:Landroid/content/Context;

    .line 2288
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;->contextInternal:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2289
    return-void
.end method

.method private restoreQuickpanelBackgroundInternal()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2292
    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$600()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;->contextInternal:Landroid/content/Context;

    if-nez v1, :cond_c

    .line 2300
    :cond_b
    :goto_b
    return-void

    .line 2294
    :cond_c
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2295
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2296
    const-string v1, "suppressCoverUI"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2297
    const-string v1, "miniModeUI"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2298
    const-string v1, "sender"

    const-string v2, "GlobalActions$ConfirmDialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2299
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;->contextInternal:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_b
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 6
    .param p1, "unused"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v3, 0x0

    .line 2311
    sget-boolean v0, Lcom/android/internal/policy/impl/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v0, :cond_2f

    .line 2312
    const-string v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDismiss() of ConfirmDialogReceiver sIsConfirmingGuard = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$200()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sIsConfirming = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirming:Z
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$300()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2313
    :cond_2f
    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->sIsSecondConfirming:Z
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$100()Z

    move-result v0

    if-nez v0, :cond_43

    .line 2314
    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$200()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2315
    const/4 v0, 0x0

    :try_start_3b
    # setter for: Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirming:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$302(Z)Z

    .line 2316
    monitor-exit v1

    .line 2320
    :goto_3f
    return-void

    .line 2316
    :catchall_40
    move-exception v0

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_40

    throw v0

    .line 2318
    :cond_43
    # setter for: Lcom/android/internal/policy/impl/GlobalActions;->sIsSecondConfirming:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlobalActions;->access$102(Z)Z

    goto :goto_3f
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2304
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;->dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_9

    .line 2305
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2307
    :cond_9
    return-void
.end method
