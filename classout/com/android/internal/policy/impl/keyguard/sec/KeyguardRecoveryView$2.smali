.class Lcom/android/internal/policy/impl/keyguard/sec/KeyguardRecoveryView$2;
.super Ljava/lang/Object;
.source "KeyguardRecoveryView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/sec/KeyguardRecoveryView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardRecoveryView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardRecoveryView;)V
    .registers 2

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardRecoveryView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardRecoveryView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 5
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardRecoveryView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardRecoveryView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardRecoveryView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardRecoveryView;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardRecoveryView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 154
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardRecoveryView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardRecoveryView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardRecoveryView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardRecoveryView;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardRecoveryView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 156
    :cond_13
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 150
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 147
    return-void
.end method
