.class public Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;
.super Landroid/widget/FrameLayout;
.source "KeyguardMultiUserSelectorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final FADE_OUT_ANIMATION_DURATION:I = 0x64

.field private static final TAG:Ljava/lang/String; = "KeyguardMultiUserSelectorView"

.field private static final is3LMAllowed:Z


# instance fields
.field private mActiveUserAvatar:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;

.field private mActiveUserAvatarSubstituted:Z

.field private mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$UserSwitcherCallback;

.field private mOldUserId:I

.field mOrderAddedComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUsersGrid:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatarSubstituted:Z

    .line 156
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mOrderAddedComparator:Ljava/util/Comparator;

    .line 72
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;)Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;
    .param p1, "x1"    # Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->setAllClickable(Z)V

    return-void
.end method

.method private createAndAddUser(Landroid/content/pm/UserInfo;)Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;
    .registers 5
    .param p1, "user"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 164
    const v1, 0x109007f

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->fromXml(ILandroid/content/Context;Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;Landroid/content/pm/UserInfo;)Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;

    move-result-object v0

    .line 166
    .local v0, "uv":Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mUsersGrid:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 167
    return-object v0
.end method

.method private setAllClickable(Z)V
    .registers 5
    .param p1, "clickable"    # Z

    .prologue
    .line 197
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mUsersGrid:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_19

    .line 198
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mUsersGrid:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 199
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1, p1}, Landroid/view/View;->setClickable(Z)V

    .line 200
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 203
    .end local v1    # "v":Landroid/view/View;
    :cond_19
    return-void
.end method

.method private setMobileDataMultiUser()V
    .registers 9

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 285
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 286
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 287
    .local v1, "currentUserId":I
    const/4 v2, 0x1

    .line 288
    .local v2, "state":Z
    if-nez v1, :cond_63

    .line 289
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mobile_data_configure"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_61

    move v2, v3

    .line 301
    :cond_22
    :goto_22
    const-string v5, "KeyguardMultiUserSelectorView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setMobileDataMultiUser userId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "mOldUserId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mOldUserId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 303
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mobile_data"

    if-eqz v2, :cond_96

    :goto_5d
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 304
    return-void

    :cond_61
    move v2, v4

    .line 289
    goto :goto_22

    .line 291
    :cond_63
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "user_dependent_mobile_settings"

    invoke-static {v5, v6, v4, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-nez v5, :cond_88

    move v2, v4

    .line 293
    :goto_72
    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mOldUserId:I

    if-nez v5, :cond_22

    .line 294
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v5

    if-eqz v5, :cond_8a

    .line 295
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mobile_data_configure"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_22

    :cond_88
    move v2, v3

    .line 291
    goto :goto_72

    .line 297
    :cond_8a
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mobile_data_configure"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_22

    :cond_96
    move v3, v4

    .line 303
    goto :goto_5d
.end method


# virtual methods
.method public addUsers(Ljava/util/Collection;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "userList":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/UserInfo;>;"
    const/4 v8, 0x0

    .line 89
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_34

    move-result-object v0

    .line 94
    .local v0, "activeUser":Landroid/content/pm/UserInfo;
    :goto_9
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 95
    .local v4, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mOrderAddedComparator:Ljava/util/Comparator;

    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 127
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 128
    .local v3, "user":Landroid/content/pm/UserInfo;
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->createAndAddUser(Landroid/content/pm/UserInfo;)Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;

    move-result-object v5

    .line 129
    .local v5, "uv":Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;
    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    iget v7, v0, Landroid/content/pm/UserInfo;->id:I

    if-ne v6, v7, :cond_2f

    .line 130
    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;

    .line 132
    :cond_2f
    const/4 v6, 0x0

    invoke-virtual {v5, v8, v8, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->setActive(ZZLjava/lang/Runnable;)V

    goto :goto_17

    .line 90
    .end local v0    # "activeUser":Landroid/content/pm/UserInfo;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    .end local v4    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    .end local v5    # "uv":Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;
    :catch_34
    move-exception v2

    .line 91
    .local v2, "re":Landroid/os/RemoteException;
    const/4 v0, 0x0

    .restart local v0    # "activeUser":Landroid/content/pm/UserInfo;
    goto :goto_9

    .line 135
    .end local v2    # "re":Landroid/os/RemoteException;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v4    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    :cond_37
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->lockPressed(Z)V

    .line 136
    return-void
.end method

.method finalizeActiveUserNow(Z)V
    .registers 5
    .param p1, "animate"    # Z

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->lockPressed(Z)V

    .line 153
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->setActive(ZZLjava/lang/Runnable;)V

    .line 154
    return-void
.end method

.method public finalizeActiveUserView(Z)V
    .registers 6
    .param p1, "animate"    # Z

    .prologue
    .line 139
    if-eqz p1, :cond_11

    .line 140
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 149
    :goto_10
    return-void

    .line 147
    :cond_11
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->finalizeActiveUserNow(Z)V

    goto :goto_10
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 207
    instance-of v1, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;

    if-nez v1, :cond_7

    .line 282
    :cond_6
    :goto_6
    return-void

    :cond_7
    move-object v0, p1

    .line 208
    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;

    .line 209
    .local v0, "avatar":Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 248
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;

    if-ne v1, v0, :cond_1a

    .line 250
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$UserSwitcherCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$UserSwitcherCallback;->showUnlockHint()V

    goto :goto_6

    .line 254
    :cond_1a
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$UserSwitcherCallback;

    const/16 v2, 0x64

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$UserSwitcherCallback;->hideSecurityView(I)V

    .line 255
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->setAllClickable(Z)V

    .line 256
    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->lockPressed(Z)V

    .line 257
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;

    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView$4;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView$4;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;)V

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->setActive(ZZLjava/lang/Runnable;)V

    goto :goto_6
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 75
    const v0, 0x10203b1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mUsersGrid:Landroid/view/ViewGroup;

    .line 76
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mUsersGrid:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 77
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->setClipChildren(Z)V

    .line 78
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->setClipToPadding(Z)V

    .line 80
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 172
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_10

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$UserSwitcherCallback;

    if-eqz v0, :cond_10

    .line 173
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$UserSwitcherCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$UserSwitcherCallback;->userActivity()V

    .line 175
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public setCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$UserSwitcherCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$UserSwitcherCallback;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$UserSwitcherCallback;

    .line 84
    return-void
.end method
