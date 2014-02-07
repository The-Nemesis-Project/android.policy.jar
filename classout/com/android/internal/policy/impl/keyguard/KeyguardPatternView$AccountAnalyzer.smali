.class Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$AccountAnalyzer;
.super Ljava/lang/Object;
.source "KeyguardPatternView.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountAnalyzer"
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
.field private mAccountIndex:I

.field private final mAccountManager:Landroid/accounts/AccountManager;

.field private final mAccounts:[Landroid/accounts/Account;

.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;Landroid/accounts/AccountManager;)V
    .registers 6
    .param p2, "accountManager"    # Landroid/accounts/AccountManager;

    .prologue
    .line 587
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$AccountAnalyzer;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 588
    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$AccountAnalyzer;->mAccountManager:Landroid/accounts/AccountManager;

    .line 589
    const-string v0, "com.google"

    new-instance v1, Landroid/os/UserHandle;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$1800(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p2, v0, v1}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$AccountAnalyzer;->mAccounts:[Landroid/accounts/Account;

    .line 591
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;Landroid/accounts/AccountManager;Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;
    .param p2, "x1"    # Landroid/accounts/AccountManager;
    .param p3, "x2"    # Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$1;

    .prologue
    .line 582
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$AccountAnalyzer;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;Landroid/accounts/AccountManager;)V

    return-void
.end method

.method private next()V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 596
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$AccountAnalyzer;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEnableFallback:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$2400(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Z

    move-result v0

    if-nez v0, :cond_10

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$AccountAnalyzer;->mAccountIndex:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$AccountAnalyzer;->mAccounts:[Landroid/accounts/Account;

    array-length v1, v1

    if-lt v0, v1, :cond_11

    .line 603
    :cond_10
    :goto_10
    return-void

    .line 601
    :cond_11
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$AccountAnalyzer;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$AccountAnalyzer;->mAccounts:[Landroid/accounts/Account;

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$AccountAnalyzer;->mAccountIndex:I

    aget-object v1, v1, v3

    new-instance v6, Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$AccountAnalyzer;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$1800(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    invoke-direct {v6, v3}, Landroid/os/UserHandle;-><init>(I)V

    move-object v3, v2

    move-object v4, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->confirmCredentialsAsUser(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;

    goto :goto_10
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .registers 5
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
    .line 613
    .local p1, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 614
    .local v0, "result":Landroid/os/Bundle;
    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 615
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$AccountAnalyzer;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    const/4 v2, 0x1

    # setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEnableFallback:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$2402(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;Z)Z
    :try_end_14
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_14} :catch_1e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_29
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_14} :catch_34
    .catchall {:try_start_0 .. :try_end_14} :catchall_3f

    .line 624
    :cond_14
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$AccountAnalyzer;->mAccountIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$AccountAnalyzer;->mAccountIndex:I

    .line 625
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$AccountAnalyzer;->next()V

    .line 627
    .end local v0    # "result":Landroid/os/Bundle;
    :goto_1d
    return-void

    .line 617
    :catch_1e
    move-exception v1

    .line 624
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$AccountAnalyzer;->mAccountIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$AccountAnalyzer;->mAccountIndex:I

    .line 625
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$AccountAnalyzer;->next()V

    goto :goto_1d

    .line 619
    :catch_29
    move-exception v1

    .line 624
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$AccountAnalyzer;->mAccountIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$AccountAnalyzer;->mAccountIndex:I

    .line 625
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$AccountAnalyzer;->next()V

    goto :goto_1d

    .line 621
    :catch_34
    move-exception v1

    .line 624
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$AccountAnalyzer;->mAccountIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$AccountAnalyzer;->mAccountIndex:I

    .line 625
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$AccountAnalyzer;->next()V

    goto :goto_1d

    .line 624
    :catchall_3f
    move-exception v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$AccountAnalyzer;->mAccountIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$AccountAnalyzer;->mAccountIndex:I

    .line 625
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$AccountAnalyzer;->next()V

    throw v1
.end method

.method public start()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 606
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$AccountAnalyzer;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    # setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEnableFallback:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$2402(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;Z)Z

    .line 607
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$AccountAnalyzer;->mAccountIndex:I

    .line 608
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$AccountAnalyzer;->next()V

    .line 609
    return-void
.end method
