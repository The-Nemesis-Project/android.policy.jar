.class Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept$1;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept;)V
    .registers 2

    .prologue
    .line 3218
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept$1;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 3220
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept$1;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept;

    # invokes: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept;->isSingleClick()Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept;->access$900(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3221
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept$1;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeySingleClickFlag:Z

    .line 3226
    :cond_f
    :goto_f
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept$1;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept;

    # invokes: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept;->reset()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept;->access$1200(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept;)V

    .line 3227
    return-void

    .line 3222
    :cond_15
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept$1;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept;

    # invokes: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept;->isDoubleClick()Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept;->access$1000(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3223
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept$1;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeySingleClickFlag:Z

    .line 3224
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept$1;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept;

    # invokes: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept;->doubleClickJob()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept;->access$1100(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept;)V

    goto :goto_f
.end method
