.class Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/internal/policy/impl/GlobalActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SilentModeAction"
.end annotation


# instance fields
.field private final ITEM_IDS:[I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/media/AudioManager;Landroid/os/Handler;)V
    .registers 4
    .param p1, "audioManager"    # Landroid/media/AudioManager;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1736
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1728
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_10

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->ITEM_IDS:[I

    .line 1737
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->mAudioManager:Landroid/media/AudioManager;

    .line 1738
    iput-object p2, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->mHandler:Landroid/os/Handler;

    .line 1739
    return-void

    .line 1728
    :array_10
    .array-data 4
        0x102031b
        0x102031c
        0x102031e
    .end array-data
.end method

.method private indexToRingerMode(I)I
    .registers 2
    .param p1, "index"    # I

    .prologue
    .line 1748
    return p1
.end method

.method private ringerModeToIndex(I)I
    .registers 2
    .param p1, "ringerMode"    # I

    .prologue
    .line 1743
    return p1
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/16 v8, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1753
    const v5, 0x1090060

    invoke-virtual {p4, v5, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 1755
    .local v4, "v":Landroid/view/View;
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->mContext:Landroid/content/Context;

    .line 1758
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->ringerModeToIndex(I)I

    move-result v2

    .line 1759
    .local v2, "selectedIndex":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_18
    const/4 v5, 0x3

    if-ge v0, v5, :cond_56

    .line 1760
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->ITEM_IDS:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1761
    .local v1, "itemView":Landroid/view/View;
    if-ne v2, v0, :cond_54

    move v5, v6

    :goto_26
    invoke-virtual {v1, v5}, Landroid/view/View;->setActivated(Z)V

    .line 1763
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1764
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1767
    if-ne v0, v6, :cond_4a

    .line 1768
    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mHasVibrator:Z
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$3200()Z

    move-result v5

    if-nez v5, :cond_4a

    .line 1769
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1770
    const v5, 0x102031d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1771
    .local v3, "spacer":Landroid/view/View;
    if-eqz v3, :cond_4a

    .line 1772
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1775
    .end local v3    # "spacer":Landroid/view/View;
    :cond_4a
    if-eqz v0, :cond_4e

    if-ne v0, v6, :cond_51

    .line 1776
    :cond_4e
    invoke-virtual {v1, v7}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 1759
    :cond_51
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_54
    move v5, v7

    .line 1761
    goto :goto_26

    .line 1779
    .end local v1    # "itemView":Landroid/view/View;
    :cond_56
    return-object v4
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 1802
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1809
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Integer;

    if-nez v2, :cond_9

    .line 1831
    :cond_8
    :goto_8
    return-void

    .line 1811
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1813
    .local v1, "index":I
    sget-boolean v2, Lcom/android/internal/policy/impl/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v2, :cond_35

    .line 1814
    const-string v2, "GlobalActions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick() of Silentmode button = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " & dismissing dialog"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1816
    :cond_35
    const/4 v0, 0x0

    .line 1817
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_44

    .line 1818
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->mContext:Landroid/content/Context;

    const-string v3, "enterprise_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1821
    .restart local v0    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    :cond_44
    if-eqz v0, :cond_5d

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v2

    if-nez v2, :cond_5d

    .line 1822
    sget-boolean v2, Lcom/android/internal/policy/impl/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v2, :cond_8

    .line 1823
    const-string v2, "GlobalActions"

    const-string v3, "restricted by MDM "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1828
    :cond_5d
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->indexToRingerMode(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1829
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_8
.end method

.method public onLongPress()Z
    .registers 2

    .prologue
    .line 1786
    const/4 v0, 0x0

    return v0
.end method

.method public onPress()V
    .registers 1

    .prologue
    .line 1783
    return-void
.end method

.method public showBeforeProvisioning()Z
    .registers 2

    .prologue
    .line 1794
    const/4 v0, 0x0

    return v0
.end method

.method public showConditional()Z
    .registers 2

    .prologue
    .line 1798
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .registers 2

    .prologue
    .line 1790
    const/4 v0, 0x1

    return v0
.end method

.method willCreate()V
    .registers 1

    .prologue
    .line 1806
    return-void
.end method
