.class Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept$1;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;)V
    .registers 2

    .prologue
    .line 3534
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept$1;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 3536
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept$1;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;

    # invokes: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;->isDoubleClick()Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;->access$1600(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 3537
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept$1;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVoiceMemoIntent:Landroid/content/Intent;

    const-string v1, "from"

    const-string v2, "VoiceKeyDoublePress"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3538
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept$1;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVoiceMemoIntent:Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3539
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept$1;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept$1;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;

    iget-object v1, v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVoiceMemoIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3541
    :cond_2f
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept$1;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;

    # invokes: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;->reset()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;->access$1700(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;)V

    .line 3542
    return-void
.end method
