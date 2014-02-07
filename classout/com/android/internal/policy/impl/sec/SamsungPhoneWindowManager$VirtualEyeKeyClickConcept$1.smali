.class Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept$1;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;)V
    .registers 2

    .prologue
    .line 3681
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept$1;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 3683
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept$1;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v1, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;->mUltrasonicService:Landroid/os/Messenger;

    .line 3684
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "arg0"    # Landroid/content/ComponentName;

    .prologue
    .line 3686
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept$1;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;->mUltrasonicService:Landroid/os/Messenger;

    .line 3687
    return-void
.end method
