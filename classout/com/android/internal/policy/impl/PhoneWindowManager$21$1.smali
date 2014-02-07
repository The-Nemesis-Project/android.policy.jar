.class Lcom/android/internal/policy/impl/PhoneWindowManager$21$1;
.super Landroid/telephony/PhoneStateListener;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager$21;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$21;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager$21;)V
    .registers 2

    .prologue
    .line 6632
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$21;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 5
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 6634
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1f

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$21;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseDockedFlag:Z

    if-eqz v0, :cond_1f

    .line 6635
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$21;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$21;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseDockedFlag:Z

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOldMouseDockedValue:Z

    .line 6636
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$21;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseDockedFlag:Z

    .line 6640
    :goto_1e
    return-void

    .line 6638
    :cond_1f
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$21;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$21;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOldMouseDockedValue:Z

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseDockedFlag:Z

    goto :goto_1e
.end method
