.class Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$7;
.super Landroid/telephony/PhoneStateListener;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->init(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V
    .registers 2

    .prologue
    .line 675
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$7;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 6
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 677
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$7;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    if-eq p1, v0, :cond_8

    const/4 v2, 0x2

    if-ne p1, v2, :cond_c

    :cond_8
    :goto_8
    # setter for: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsRingingOrOffhook:Z
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->access$402(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Z)Z

    .line 678
    return-void

    .line 677
    :cond_c
    const/4 v0, 0x0

    goto :goto_8
.end method
