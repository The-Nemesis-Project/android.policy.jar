.class Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$2;
.super Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;
.source "SPassUnlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->startScanningAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;Landroid/graphics/drawable/AnimationDrawable;)V
    .registers 3
    .param p2, "x0"    # Landroid/graphics/drawable/AnimationDrawable;

    .prologue
    .line 472
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$2;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;Landroid/graphics/drawable/AnimationDrawable;)V

    return-void
.end method


# virtual methods
.method onAnimationEnd()V
    .registers 3

    .prologue
    .line 475
    const-string v0, "SPassUnlock"

    const-string v1, "startScanningAnimation() : End"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$2;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;

    const/4 v1, 0x1

    # setter for: Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mIsFinishedScanning:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->access$102(Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;Z)Z

    .line 477
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$2;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mIsFinishedIdentify:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->access$200(Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 478
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$2;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mIsSucceed:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->access$300(Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 479
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$2;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;

    # invokes: Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->startFailedAnimation()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->access$400(Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;)V

    .line 486
    :cond_22
    :goto_22
    return-void

    .line 481
    :cond_23
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$2;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;

    # invokes: Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->startSucceedAnimation()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->access$500(Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;)V

    goto :goto_22
.end method
