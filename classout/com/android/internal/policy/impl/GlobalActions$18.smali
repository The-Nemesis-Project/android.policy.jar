.class Lcom/android/internal/policy/impl/GlobalActions$18;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions;->createDialog()Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;
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
    .line 1608
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$18;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1611
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$18;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$3100(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedState()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 1612
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3d

    const/16 v1, 0x18

    if-ne p2, v1, :cond_3d

    .line 1613
    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mSealedModeOptionShown:Z
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$3600()Z

    move-result v1

    if-nez v1, :cond_3d

    .line 1615
    # setter for: Lcom/android/internal/policy/impl/GlobalActions;->mSealedModeOptionShown:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$3602(Z)Z

    .line 1616
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$18;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$3900(Lcom/android/internal/policy/impl/GlobalActions;)Ljava/util/ArrayList;

    move-result-object v1

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mSealedMenuPosition:I
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$3700()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$18;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mSealedModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlobalActions;->access$3800(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1617
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$18;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$300(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1622
    :goto_3c
    return v0

    :cond_3d
    const/4 v0, 0x0

    goto :goto_3c
.end method
