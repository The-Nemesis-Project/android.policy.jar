.class Lcom/android/internal/policy/impl/GlobalActions$28;
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
    .line 347
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$28;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-direct {p0, p2, p3}, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;-><init>(II)V

    return-void
.end method

.method private resetStuff(Ljava/lang/String;)V
    .registers 6
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 415
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "pkill"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "-TERM"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "-f"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 417
    :goto_1c
    return-void

    .line 416
    :catch_1d
    move-exception v0

    goto :goto_1c
.end method

.method private restartStuff(Ljava/lang/String;)V
    .registers 6
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 415
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "am"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "startservice"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "-n"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 417
    :goto_1c
    return-void

    .line 416
    :catch_1d
    move-exception v0

    goto :goto_1c
.end method


# virtual methods
.method public onPress()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 351
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$28;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$800(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navkey_toggle"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_33

    :goto_13
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$28;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$800(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navkey_toggle"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "nav_key_change"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "com.android.systemui"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlobalActions$28;->resetStuff(Ljava/lang/String;)V

    const-string v0, "com.android.systemui/.SystemUIService"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlobalActions$28;->restartStuff(Ljava/lang/String;)V

    .line 358
    return-void

    :cond_33
    const/4 v2, 0x1

    goto :goto_13
.end method

.method public showBeforeProvisioning()Z
    .registers 2

    .prologue
    .line 363
    const/4 v0, 0x1

    return v0
.end method

.method public showConditional()Z
    .registers 2

    .prologue
    .line 366
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
    .line 360
    const/4 v0, 0x1

    return v0
.end method
