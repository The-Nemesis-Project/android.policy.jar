.class Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;
.super Ljava/lang/Object;
.source "KeyguardAccountView.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->asyncCheckPassword()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;)V
    .registers 2

    .prologue
    .line 298
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 301
    .local p1, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v3

    const-wide/16 v4, 0x7530

    invoke-interface {v3, v4, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 302
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 303
    .local v1, "result":Landroid/os/Bundle;
    const-string v3, "booleanResult"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 304
    .local v2, "verified":Z
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->postOnCheckPasswordResult(Z)V
    invoke-static {v3, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;Z)V
    :try_end_1c
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_1c} :catch_2b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1c} :catch_41
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_1c} :catch_57
    .catchall {:try_start_0 .. :try_end_1c} :catchall_6d

    .line 312
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;)Landroid/widget/EditText;

    move-result-object v3

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2$1;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 318
    .end local v1    # "result":Landroid/os/Bundle;
    .end local v2    # "verified":Z
    :goto_2a
    return-void

    .line 305
    :catch_2b
    move-exception v0

    .line 306
    .local v0, "e":Landroid/accounts/OperationCanceledException;
    :try_start_2c
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;

    const/4 v4, 0x0

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->postOnCheckPasswordResult(Z)V
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;Z)V
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_6d

    .line 312
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;)Landroid/widget/EditText;

    move-result-object v3

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2$1;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    goto :goto_2a

    .line 307
    .end local v0    # "e":Landroid/accounts/OperationCanceledException;
    :catch_41
    move-exception v0

    .line 308
    .local v0, "e":Ljava/io/IOException;
    :try_start_42
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;

    const/4 v4, 0x0

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->postOnCheckPasswordResult(Z)V
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;Z)V
    :try_end_48
    .catchall {:try_start_42 .. :try_end_48} :catchall_6d

    .line 312
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;)Landroid/widget/EditText;

    move-result-object v3

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2$1;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    goto :goto_2a

    .line 309
    .end local v0    # "e":Ljava/io/IOException;
    :catch_57
    move-exception v0

    .line 310
    .local v0, "e":Landroid/accounts/AuthenticatorException;
    :try_start_58
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;

    const/4 v4, 0x0

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->postOnCheckPasswordResult(Z)V
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;Z)V
    :try_end_5e
    .catchall {:try_start_58 .. :try_end_5e} :catchall_6d

    .line 312
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;)Landroid/widget/EditText;

    move-result-object v3

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2$1;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    goto :goto_2a

    .end local v0    # "e":Landroid/accounts/AuthenticatorException;
    :catchall_6d
    move-exception v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;)Landroid/widget/EditText;

    move-result-object v4

    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2$1;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    throw v3
.end method