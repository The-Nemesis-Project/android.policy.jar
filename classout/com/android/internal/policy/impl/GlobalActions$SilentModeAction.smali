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
    .line 2317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2311
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_10

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->ITEM_IDS:[I

    .line 2318
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->mAudioManager:Landroid/media/AudioManager;

    .line 2319
    iput-object p2, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->mHandler:Landroid/os/Handler;

    .line 2320
    return-void

    .line 2311
    :array_10
    .array-data 4
        0x1020320
        0x1020321
        0x1020323
    .end array-data
.end method

.method private indexToRingerMode(I)I
    .registers 2
    .param p1, "index"    # I

    .prologue
    .line 2327
    return p1
.end method

.method private ringerModeToIndex(I)I
    .registers 2
    .param p1, "ringerMode"    # I

    .prologue
    .line 2323
    return p1
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/16 v9, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2331
    const v5, 0x1090059

    invoke-virtual {p4, v5, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 2333
    .local v4, "v":Landroid/view/View;
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->mContext:Landroid/content/Context;

    .line 2335
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->ringerModeToIndex(I)I

    move-result v2

    .line 2336
    .local v2, "selectedIndex":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_18
    const/4 v5, 0x3

    if-ge v0, v5, :cond_7e

    .line 2337
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->ITEM_IDS:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2338
    .local v1, "itemView":Landroid/view/View;
    if-ne v2, v0, :cond_7c

    move v5, v6

    :goto_26
    invoke-virtual {v1, v5}, Landroid/view/View;->setActivated(Z)V

    .line 2340
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2341
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2343
    if-ne v0, v6, :cond_4a

    .line 2344
    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mHasVibrator:Z
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$4400()Z

    move-result v5

    if-nez v5, :cond_4a

    .line 2345
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2346
    const v5, 0x1020322

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 2347
    .local v3, "spacer":Landroid/view/View;
    if-eqz v3, :cond_4a

    .line 2348
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2351
    .end local v3    # "spacer":Landroid/view/View;
    :cond_4a
    if-eqz v0, :cond_4e

    if-ne v0, v6, :cond_51

    .line 2352
    :cond_4e
    invoke-virtual {v1, v7}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 2355
    :cond_51
    const-string v5, "VZW"

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mSalesCode:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$1100()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_79

    const-string v5, "capuccino"

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mScafe:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$900()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_79

    .line 2360
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x1080ab2

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2336
    :cond_79
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_7c
    move v5, v7

    .line 2338
    goto :goto_26

    .line 2364
    .end local v1    # "itemView":Landroid/view/View;
    :cond_7e
    return-object v4
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 2390
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2395
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Integer;

    if-nez v2, :cond_9

    .line 2416
    :cond_8
    :goto_8
    return-void

    .line 2396
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2398
    .local v1, "index":I
    sget-boolean v2, Lcom/android/internal/policy/impl/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v2, :cond_35

    .line 2399
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

    .line 2401
    :cond_35
    const/4 v0, 0x0

    .line 2402
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_44

    .line 2403
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->mContext:Landroid/content/Context;

    const-string v3, "enterprise_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 2406
    .restart local v0    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    :cond_44
    if-eqz v0, :cond_5d

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v2

    if-nez v2, :cond_5d

    .line 2407
    sget-boolean v2, Lcom/android/internal/policy/impl/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v2, :cond_8

    .line 2408
    const-string v2, "GlobalActions"

    const-string v3, "restricted by MDM "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 2413
    :cond_5d
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->indexToRingerMode(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 2414
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_8
.end method

.method public onLongPress()Z
    .registers 2

    .prologue
    .line 2378
    const/4 v0, 0x0

    return v0
.end method

.method public onPress()V
    .registers 1

    .prologue
    .line 2376
    return-void
.end method

.method public showBeforeProvisioning()Z
    .registers 2

    .prologue
    .line 2384
    const/4 v0, 0x0

    return v0
.end method

.method public showConditional()Z
    .registers 2

    .prologue
    .line 2387
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .registers 2

    .prologue
    .line 2381
    const/4 v0, 0x1

    return v0
.end method

.method public updateRingerMode()V
    .registers 6

    .prologue
    .line 2367
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->ringerModeToIndex(I)I

    move-result v2

    .line 2368
    .local v2, "selectedIndex":I
    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions;->mSilentModeView:Landroid/view/View;

    if-nez v3, :cond_f

    .line 2374
    :cond_e
    return-void

    .line 2369
    :cond_f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    const/4 v3, 0x3

    if-ge v0, v3, :cond_e

    .line 2370
    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions;->mSilentModeView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->ITEM_IDS:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2371
    .local v1, "itemView":Landroid/view/View;
    if-ne v2, v0, :cond_2d

    const/4 v3, 0x1

    :goto_20
    invoke-virtual {v1, v3}, Landroid/view/View;->setActivated(Z)V

    .line 2372
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2369
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 2371
    :cond_2d
    const/4 v3, 0x0

    goto :goto_20
.end method

.method willCreate()V
    .registers 1

    .prologue
    .line 2393
    return-void
.end method
