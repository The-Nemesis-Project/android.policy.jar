.class Lcom/android/internal/policy/impl/GlobalActions$25;
.super Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions;->createDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;II)V
    .registers 4
    .param p2, "x0"    # I
    .param p3, "x1"    # I

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$25;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-direct {p0, p2, p3}, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;-><init>(II)V

    return-void
.end method


# virtual methods
.method public onPress()V
    .registers 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$25;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # invokes: Lcom/android/internal/policy/impl/GlobalActions;->takeScreenshot()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$601(Lcom/android/internal/policy/impl/GlobalActions;)V

    .line 269
    return-void
.end method

.method public showBeforeProvisioning()Z
    .registers 2

    .prologue
    .line 276
    const/4 v0, 0x1

    return v0
.end method

.method public showConditional()Z
    .registers 2

    .prologue
    .line 316
    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mMinPowerMenu:Z
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$001()Z

    move-result p0

    if-nez p0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public showDuringKeyguard()Z
    .registers 2

    .prologue
    .line 272
    const/4 v0, 0x1

    return v0
.end method
