.class Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept$1;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;)V
    .registers 2

    .prologue
    .line 3111
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept$1;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 3113
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept$1;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;

    # invokes: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;->isTripleClick()Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;->access$1100(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 3115
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept$1;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;

    iget-object v1, v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    if-eqz v1, :cond_29

    .line 3116
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SAFETY_MESSAGE_TRIGGER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3117
    .local v0, "safetyMessage":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept$1;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;

    iget-object v1, v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3118
    const-string v1, "PowerKeyTripleClick"

    const-string v2, "Safety mesage broadcasted"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3121
    .end local v0    # "safetyMessage":Landroid/content/Intent;
    :cond_29
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept$1;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;

    # invokes: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;->reset()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;->access$1200(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;)V

    .line 3122
    return-void
.end method
