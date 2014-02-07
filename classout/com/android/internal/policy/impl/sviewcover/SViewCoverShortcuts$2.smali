.class Lcom/android/internal/policy/impl/sviewcover/SViewCoverShortcuts$2;
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
    .line 66
    iput-object p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverShortcuts$2;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverShortcuts;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 70
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverShortcuts;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverShortcuts;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Quick Note button clicked"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.covermemo"

    const-string v3, "com.samsung.android.covermemo.CoverMemo_Service"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .local v0, "component":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 75
    .local v1, "i":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverShortcuts$2;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverShortcuts;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverShortcuts;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 76
    return-void
.end method
