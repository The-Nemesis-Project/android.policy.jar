.class Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept$2;
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
    .line 3545
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept$2;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 3547
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept$2;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVoiceMemoIntent:Landroid/content/Intent;

    const-string v1, "from"

    const-string v2, "VoiceKeyLongPress"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3548
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept$2;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVoiceMemoIntent:Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3549
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept$2;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept$2;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;

    iget-object v1, v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVoiceMemoIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3550
    return-void
.end method
