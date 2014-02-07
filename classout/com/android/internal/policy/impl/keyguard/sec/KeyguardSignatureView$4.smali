.class Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$4;
.super Ljava/lang/Object;
.source "KeyguardSignatureView.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)V
    .registers 2

    .prologue
    .line 322
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 9
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 324
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignServiceRunningLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$400(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 326
    :try_start_7
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    invoke-static {p2}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/ISignServiceInterface;

    move-result-object v4

    # setter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    invoke-static {v2, v4}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$502(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;Lcom/android/internal/policy/ISignServiceInterface;)Lcom/android/internal/policy/ISignServiceInterface;

    .line 327
    const-string v2, "KeyguardSignatureView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connected to sign service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$500(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/policy/ISignServiceInterface;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$500(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/policy/ISignServiceInterface;

    move-result-object v2

    if-eqz v2, :cond_9b

    .line 329
    const-string v2, "KeyguardSignatureView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "before set sign service, mSignView: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$600(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/widget/SignView;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$600(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/widget/SignView;

    move-result-object v2

    if-eqz v2, :cond_6b

    .line 332
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$600(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/widget/SignView;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$500(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/policy/ISignServiceInterface;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/SignView;->setSignService(Lcom/android/internal/policy/ISignServiceInterface;)V

    .line 336
    :cond_6b
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$500(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/policy/ISignServiceInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/policy/ISignServiceInterface;->getEngineStatus()Z

    move-result v4

    # setter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mEngineStarted:Z
    invoke-static {v2, v4}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$702(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;Z)Z

    .line 337
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mEngineStarted:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$700(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Z

    move-result v2

    if-eqz v2, :cond_be

    .line 338
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$500(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/policy/ISignServiceInterface;

    move-result-object v2

    const/16 v4, 0xa

    invoke-interface {v2, v4}, Lcom/android/internal/policy/ISignServiceInterface;->getModelNum(I)I

    move-result v1

    .line 339
    .local v1, "signNum":I
    const/4 v2, 0x3

    if-eq v1, v2, :cond_9d

    .line 341
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$500(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/policy/ISignServiceInterface;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lcom/android/internal/policy/ISignServiceInterface;->readSignatureData(Ljava/lang/String;)I
    :try_end_9b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_9b} :catch_b6
    .catchall {:try_start_7 .. :try_end_9b} :catchall_bb

    .line 352
    .end local v1    # "signNum":I
    :cond_9b
    :goto_9b
    :try_start_9b
    monitor-exit v3
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_bb

    .line 353
    return-void

    .line 343
    .restart local v1    # "signNum":I
    :cond_9d
    :try_start_9d
    const-string v2, "KeyguardSignatureView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Saved signatures are not sufficient. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b5
    .catch Landroid/os/RemoteException; {:try_start_9d .. :try_end_b5} :catch_b6
    .catchall {:try_start_9d .. :try_end_b5} :catchall_bb

    goto :goto_9b

    .line 349
    .end local v1    # "signNum":I
    :catch_b6
    move-exception v0

    .line 350
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_b7
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9b

    .line 352
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_bb
    move-exception v2

    monitor-exit v3
    :try_end_bd
    .catchall {:try_start_b7 .. :try_end_bd} :catchall_bb

    throw v2

    .line 346
    :cond_be
    :try_start_be
    const-string v2, "KeyguardSignatureView"

    const-string v4, "fail to init engine"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c5
    .catch Landroid/os/RemoteException; {:try_start_be .. :try_end_c5} :catch_b6
    .catchall {:try_start_be .. :try_end_c5} :catchall_bb

    goto :goto_9b
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignServiceRunningLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$400(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 357
    :try_start_7
    const-string v0, "KeyguardSignatureView"

    const-string v2, "Disconnected to sign service"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    const/4 v2, 0x0

    # setter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$502(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;Lcom/android/internal/policy/ISignServiceInterface;)Lcom/android/internal/policy/ISignServiceInterface;

    .line 360
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    const/4 v2, 0x0

    # setter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mEngineStarted:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$702(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;Z)Z

    .line 361
    monitor-exit v1

    .line 362
    return-void

    .line 361
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw v0
.end method
