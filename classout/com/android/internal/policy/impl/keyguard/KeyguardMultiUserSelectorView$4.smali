.class Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView$4;
.super Ljava/lang/Object;
.source "KeyguardMultiUserSelectorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;

.field final synthetic val$avatar:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;)V
    .registers 3

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;

    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView$4;->val$avatar:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 260
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView$4;->val$avatar:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;

    # setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->access$002(Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;)Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;

    .line 261
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "internal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 266
    :try_start_17
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView$4;->val$avatar:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->getUserInfo()Landroid/content/pm/UserInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_26} :catch_27

    .line 277
    :goto_26
    return-void

    .line 271
    :catch_27
    move-exception v0

    .line 272
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "KeyguardMultiUserSelectorView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t switch user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 275
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_41
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;

    const/4 v2, 0x1

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->setAllClickable(Z)V
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;Z)V

    goto :goto_26
.end method