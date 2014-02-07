.class Lcom/android/internal/policy/impl/sviewcover/SViewCoverShortcuts$1;
.super Ljava/lang/Object;
.source "SViewCoverShortcuts.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sviewcover/SViewCoverShortcuts;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverShortcuts;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverShortcuts;)V
    .registers 2

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverShortcuts$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverShortcuts;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 51
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverShortcuts;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverShortcuts;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Camera button clicked"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 53
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 54
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 55
    const-string v2, "com.sec.android.app.camera"

    const-string v3, "com.sec.android.app.camera.Camera"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string v2, "covermode"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 59
    :try_start_25
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverShortcuts$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverShortcuts;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverShortcuts;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_25 .. :try_end_2e} :catch_2f

    .line 63
    :goto_2e
    return-void

    .line 60
    :catch_2f
    move-exception v0

    .line 61
    .local v0, "exception":Landroid/content/ActivityNotFoundException;
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverShortcuts;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverShortcuts;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityNotFoundException !!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e
.end method
