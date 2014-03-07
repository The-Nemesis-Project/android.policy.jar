.class Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$12;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
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
    .line 1906
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$12;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1908
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$12;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isScreenCaptureEnabled()Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->access$300(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1911
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v0, :cond_13

    const-string v0, "SamsungWindowManager"

    const-string v1, "mScreenrecordChordLongPress : startService(ACTION_SCREEN_RECORDER)"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    :cond_13
    :goto_13
    return-void

    .line 1913
    :cond_14
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v0, :cond_13

    const-string v0, "SamsungWindowManager"

    const-string v1, "mScreenrecordChordLongPress : Disalbe screen capture"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method
