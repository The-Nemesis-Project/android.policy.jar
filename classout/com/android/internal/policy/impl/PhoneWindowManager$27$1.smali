.class Lcom/android/internal/policy/impl/PhoneWindowManager$27$1;
.super Landroid/telephony/PhoneStateListener;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager$27;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$27;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager$27;)V
    .registers 2

    .prologue
    .line 8137
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$27$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$27;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 6
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 8139
    if-eq p1, v2, :cond_6

    const/4 v0, 0x2

    if-ne p1, v0, :cond_30

    .line 8140
    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$27$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$27;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$27;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseDockedFlag:Z

    if-ne v0, v2, :cond_21

    .line 8141
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$27$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$27;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$27;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$27$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$27;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager$27;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseDockedFlag:Z

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOldMouseDockedValue:Z

    .line 8142
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$27$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$27;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$27;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseDockedFlag:Z

    .line 8147
    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$27$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$27;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$27;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(Z)V

    .line 8148
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$27$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$27;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$27;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 8149
    return-void

    .line 8145
    :cond_30
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$27$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$27;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$27;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$27$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$27;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager$27;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOldMouseDockedValue:Z

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseDockedFlag:Z

    goto :goto_21
.end method
