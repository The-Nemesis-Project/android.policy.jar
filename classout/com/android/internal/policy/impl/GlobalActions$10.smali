.class Lcom/android/internal/policy/impl/GlobalActions$10;
.super Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;
.source "GlobalActions.java"


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
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;II)V
    .registers 4
    .param p2, "x0"    # I
    .param p3, "x1"    # I

    .prologue
    .line 1205
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$10;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-direct {p0, p2, p3}, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;-><init>(II)V

    return-void
.end method


# virtual methods
.method public onLongPress()Z
    .registers 2

    .prologue
    .line 1234
    const/4 v0, 0x0

    return v0
.end method

.method public onPress()V
    .registers 5

    .prologue
    .line 1207
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$10;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlobalActions;->access$400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1208
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x10401dc

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1209
    const v2, 0x10401dd

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1210
    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1211
    const v2, 0x104069e

    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$10$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/GlobalActions$10$1;-><init>(Lcom/android/internal/policy/impl/GlobalActions$10;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1229
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1230
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 1231
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1232
    return-void
.end method

.method public showBeforeProvisioning()Z
    .registers 2

    .prologue
    .line 1240
    const/4 v0, 0x0

    return v0
.end method

.method public showConditional()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1243
    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mStrCSCFeatureGlobalActionItems:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$800()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BugReport"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-ne v2, v0, :cond_f

    .line 1251
    :cond_e
    :goto_e
    return v0

    .line 1246
    :cond_f
    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mStrCSCFeatureGlobalActionItems:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$800()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v0, :cond_2f

    .line 1248
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$10;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlobalActions;->access$400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bugreport_in_power_menu"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_e

    move v0, v1

    goto :goto_e

    :cond_2f
    move v0, v1

    .line 1251
    goto :goto_e
.end method

.method public showDuringKeyguard()Z
    .registers 2

    .prologue
    .line 1237
    const/4 v0, 0x1

    return v0
.end method
