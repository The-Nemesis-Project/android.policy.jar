.class Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuLongPressConcept"
.end annotation


# instance fields
.field private final SFINDER_COMPONENT:Landroid/content/ComponentName;

.field private mDeniedActivities:[Ljava/lang/String;

.field private mFindoEnabled:Z

.field private mFindoFeatureChecked:Z

.field private mMenuLongPressed:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 3422
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3423
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.app.galaxyfinder"

    const-string v2, "com.samsung.android.app.galaxyfinder.GalaxyFinderActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;->SFINDER_COMPONENT:Landroid/content/ComponentName;

    .line 3427
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;->mFindoEnabled:Z

    .line 3428
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;->mFindoFeatureChecked:Z

    .line 3430
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "{com.android.phone/com.android.phone.UsimDownload}"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;->mDeniedActivities:[Ljava/lang/String;

    .line 3434
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept$1;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;->mMenuLongPressed:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
    .param p2, "x1"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$1;

    .prologue
    .line 3422
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;)Landroid/content/ComponentName;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;

    .prologue
    .line 3422
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;->SFINDER_COMPONENT:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;

    .prologue
    .line 3422
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;->checkMenuLongPressIgnore()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;

    .prologue
    .line 3422
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;->handleMenuLongPress()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1501(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;

    .prologue
    .line 3422
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;->componentType()V

    return-void
.end method

.method private checkMenuLongPressIgnore()Z
    .registers 2

    .prologue
    .line 3484
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;->ensureFindoFeatureChecked()V

    .line 3486
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;->mFindoEnabled:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mBootCompleted:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isCoverOpen()Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private componentType()V
    .registers 4

    .prologue
    .line 1696
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "custom_menu_intent"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1d

    const-string v1, "com.google.android.googlequicksearchbox"

    const-string v2, "com.google.android.googlequicksearchbox.SearchActivity"

    :goto_15
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;->SFINDER_COMPONENT:Landroid/content/ComponentName;

    return-void

    :cond_1d
    const-string v1, "com.samsung.android.app.galaxyfinder"

    const-string v2, "com.samsung.android.app.galaxyfinder.GalaxyFinderActivity"

    goto :goto_15
.end method

.method private ensureFindoFeatureChecked()V
    .registers 3

    .prologue
    .line 3459
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;->mFindoFeatureChecked:Z

    if-nez v0, :cond_1d

    .line 3460
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.findo"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;->mFindoEnabled:Z

    .line 3461
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;->mFindoFeatureChecked:Z

    .line 3463
    :cond_1d
    return-void
.end method

.method private handleMenuLongPress()Z
    .registers 3

    .prologue
    .line 3490
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;->ensureFindoFeatureChecked()V

    .line 3492
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;->mFindoEnabled:Z

    if-eqz v0, :cond_25

    .line 3493
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mBootCompleted:Z

    if-nez v0, :cond_16

    .line 3494
    const-string v0, "SamsungWindowManager"

    const-string v1, "handleMenuLongPress: mBootCompleted=false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3497
    const/4 v0, 0x0

    .line 3512
    :goto_15
    return v0

    .line 3498
    :cond_16
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isCoverOpen()Z

    move-result v0

    if-nez v0, :cond_28

    .line 3499
    const-string v0, "SamsungWindowManager"

    const-string v1, "handleMenuLongPress: isCoverOpen()=false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3512
    :cond_25
    :goto_25
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;->mFindoEnabled:Z

    goto :goto_15

    .line 3500
    :cond_28
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;->isDeniedActivity()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 3501
    const-string v0, "SamsungWindowManager"

    const-string v1, "handleMenuLongPress: isDeniedActivity()=true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 3502
    :cond_36
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_46

    .line 3503
    const-string v0, "SamsungWindowManager"

    const-string v1, "handleMenuLongPress: device is not provisioned yet!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 3504
    :cond_46
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 3505
    const-string v0, "SamsungWindowManager"

    const-string v1, "handleMenuLongPress: keyguard is on!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 3507
    :cond_58
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;->mMenuLongPressed:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3508
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;->mMenuLongPressed:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_25
.end method

.method private isDeniedActivity()Z
    .registers 9

    .prologue
    const/4 v6, 0x1

    .line 3466
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v5

    .line 3468
    .local v5, "topActivity":Landroid/content/ComponentName;
    if-nez v5, :cond_a

    .line 3480
    :cond_9
    :goto_9
    return v6

    .line 3472
    :cond_a
    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    .line 3474
    .local v1, "cmpName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;->mDeniedActivities:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_12
    if-ge v3, v4, :cond_1f

    aget-object v2, v0, v3

    .line 3475
    .local v2, "entry":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 3474
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 3480
    .end local v2    # "entry":Ljava/lang/String;
    :cond_1f
    const/4 v6, 0x0

    goto :goto_9
.end method
