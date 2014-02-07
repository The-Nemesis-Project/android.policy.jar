.class Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept$IncomingHandler;
.super Landroid/os/Handler;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IncomingHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;)V
    .registers 2

    .prologue
    .line 3668
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept$IncomingHandler;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3676
    return-void
.end method
