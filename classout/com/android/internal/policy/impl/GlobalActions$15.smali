.class Lcom/android/internal/policy/impl/GlobalActions$15;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;)V
    .registers 2

    .prologue
    .line 1320
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$15;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x0

    .line 1322
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$15;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$2900(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->onPressAction()V

    .line 1323
    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$600()Z

    move-result v0

    if-nez v0, :cond_30

    .line 1324
    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->sIsSecondConfirming:Z
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$100()Z

    move-result v0

    if-nez v0, :cond_34

    .line 1325
    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$200()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1326
    const/4 v0, 0x0

    :try_start_1c
    # setter for: Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirming:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$302(Z)Z

    .line 1327
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_31

    .line 1331
    :goto_20
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$15;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # invokes: Lcom/android/internal/policy/impl/GlobalActions;->clearSCoverRequestStatus()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$000(Lcom/android/internal/policy/impl/GlobalActions;)V

    .line 1332
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$15;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$2400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1334
    :cond_30
    return-void

    .line 1327
    :catchall_31
    move-exception v0

    :try_start_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v0

    .line 1329
    :cond_34
    # setter for: Lcom/android/internal/policy/impl/GlobalActions;->sIsSecondConfirming:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlobalActions;->access$102(Z)Z

    goto :goto_20
.end method
