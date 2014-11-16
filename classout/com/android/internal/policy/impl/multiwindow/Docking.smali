.class public Lcom/android/internal/policy/impl/multiwindow/Docking;
.super Ljava/lang/Object;
.source "Docking.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/multiwindow/Docking$OnDockingListener;
    }
.end annotation


# static fields
.field private static final DOCKING_AREA_RATIO:F = 0.04f

.field private static final DOCKING_CANCEL_TIMER_TIME:I = 0x2bc

.field private static final DOWN_SIDE_DOCKING_AREA_RATIO:F = 0.07f

.field private static final MESSAGE_DOCKING_CANCEL:I = 0x65

.field private static final STACK_WEIGHT_MIN:F = 0.1f


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCenterBarPoint:Landroid/graphics/Point;

.field private mCurScreenHeight:I

.field private mCurScreenWidth:I

.field private mDockingBounds:Landroid/graphics/Rect;

.field private mDockingListener:Lcom/android/internal/policy/impl/multiwindow/Docking$OnDockingListener;

.field private mDockingZone:I

.field mHandler:Landroid/os/Handler;

.field private mInitCenterBarPoint:Z

.field private mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

.field private mSupportSplitDocking:Z

.field private mTransitionEnabled:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/samsung/android/multiwindow/MultiWindowFacade;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "facade"    # Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingZone:I

    .line 35
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    .line 40
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mTransitionEnabled:Z

    .line 41
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mSupportSplitDocking:Z

    .line 44
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mInitCenterBarPoint:Z

    .line 237
    new-instance v0, Lcom/android/internal/policy/impl/multiwindow/Docking$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/multiwindow/Docking$1;-><init>(Lcom/android/internal/policy/impl/multiwindow/Docking;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    .line 50
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mActivity:Landroid/app/Activity;

    .line 51
    iput-object p2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 53
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportStyleTransition(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mTransitionEnabled:Z

    .line 56
    :cond_29
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/multiwindow/Docking;)Lcom/android/internal/policy/impl/multiwindow/Docking$OnDockingListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/Docking;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingListener:Lcom/android/internal/policy/impl/multiwindow/Docking$OnDockingListener;

    return-object v0
.end method

.method private checkStyleTransitionEnable()Z
    .registers 11

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 262
    :try_start_2
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-result-object v1

    .line 264
    .local v1, "applicationInfos":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 265
    .local v4, "pm":Landroid/content/pm/PackageManager;
    if-eqz v4, :cond_39

    .line 266
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    const/16 v9, 0xc0

    invoke-virtual {v4, v8, v9}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 270
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_39

    .line 271
    iget-object v8, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_3a

    iget-object v8, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v8, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 273
    .local v2, "applicationMetaData":Landroid/os/Bundle;
    :goto_24
    const/4 v5, 0x0

    .line 274
    .local v5, "style":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v8, :cond_31

    .line 275
    iget-object v8, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.sec.android.multiwindow.activity.STYLE"

    invoke-direct {p0, v8, v9}, Lcom/android/internal/policy/impl/multiwindow/Docking;->parseActivityInfoMetaData(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 279
    :cond_31
    iget-object v8, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v8}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isHideAppList(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3d

    .line 306
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "applicationInfos":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    .end local v2    # "applicationMetaData":Landroid/os/Bundle;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "style":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_39
    :goto_39
    return v6

    .line 271
    .restart local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v1    # "applicationInfos":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_3a
    iget-object v2, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    goto :goto_24

    .line 282
    .restart local v2    # "applicationMetaData":Landroid/os/Bundle;
    .restart local v5    # "style":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3d
    if-eqz v5, :cond_4f

    const-string v8, "fullscreenOnly"

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_39

    const-string v8, "isolatedSplit"

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_39

    .line 286
    :cond_4f
    if-eqz v2, :cond_63

    const-string v8, "com.samsung.android.sdk.multiwindow.enable"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_61

    const-string v8, "com.sec.android.support.multiwindow"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_63

    :cond_61
    move v6, v7

    .line 290
    goto :goto_39

    .line 291
    :cond_63
    iget-object v8, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v8}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportApp(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_39

    .line 293
    iget-object v8, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v8}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportPackageList(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7b

    iget-object v8, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v8}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportComponentList(Ljava/lang/String;)Z
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_78} :catch_7d

    move-result v8

    if-eqz v8, :cond_39

    :cond_7b
    move v6, v7

    .line 299
    goto :goto_39

    .line 303
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "applicationInfos":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    .end local v2    # "applicationMetaData":Landroid/os/Bundle;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "style":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_7d
    move-exception v3

    .line 304
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_39
.end method

.method public static getChanagedMultiWindowStyle(ILcom/samsung/android/multiwindow/MultiWindowStyle;)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .registers 5
    .param p0, "zone"    # I
    .param p1, "multiWindowStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    const/4 v2, 0x0

    .line 60
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 61
    .local v0, "requestStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 62
    const/16 v1, 0xf

    if-ne p0, v1, :cond_17

    .line 63
    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 67
    :goto_11
    const/16 v1, 0x800

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 68
    return-object v0

    .line 65
    :cond_17
    invoke-virtual {v0, p0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    goto :goto_11
.end method

.method private isFullScreenOnly(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z
    .registers 3
    .param p1, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    .line 252
    if-eqz p1, :cond_19

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v0

    if-nez v0, :cond_19

    const/high16 v0, 0x200000

    invoke-virtual {p1, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 255
    :cond_19
    const/4 v0, 0x1

    .line 257
    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method private parseActivityInfoMetaData(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 6
    .param p1, "activityMetaData"    # Landroid/os/Bundle;
    .param p2, "metaData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 312
    .local v0, "empty":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 313
    .local v1, "style":Ljava/lang/String;
    if-eqz v1, :cond_1a

    .line 314
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "empty":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 316
    :cond_1a
    return-object v0
.end method


# virtual methods
.method public checkCenterBarPoint()V
    .registers 5

    .prologue
    .line 107
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mInitCenterBarPoint:Z

    if-eqz v2, :cond_27

    .line 108
    new-instance v0, Landroid/graphics/Point;

    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenWidth:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenHeight:I

    div-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 109
    .local v0, "point":Landroid/graphics/Point;
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v2, v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setCenterBarPoint(Landroid/graphics/Point;)V

    .line 110
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.action.ARRANGE_CONTROLL_BAR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .local v1, "refreshCenterbarIntent":Landroid/content/Intent;
    const-string v2, "com.sec.android.extra.CONTROL_BAR_POS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 112
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 114
    .end local v0    # "point":Landroid/graphics/Point;
    .end local v1    # "refreshCenterbarIntent":Landroid/content/Intent;
    :cond_27
    return-void
.end method

.method public checkDockingWindow(II)I
    .registers 10
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const v4, 0x3d23d70a

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 161
    const/4 v0, 0x0

    .line 163
    .local v0, "dockingZone":I
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mTransitionEnabled:Z

    if-nez v2, :cond_b

    .line 234
    :goto_a
    return v1

    .line 167
    :cond_b
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCenterBarPoint:Landroid/graphics/Point;

    if-nez v2, :cond_11

    move v1, v0

    .line 168
    goto :goto_a

    .line 171
    :cond_11
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v6, :cond_93

    .line 172
    int-to-float v2, p2

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5d

    .line 173
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCenterBarPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-gtz v2, :cond_4f

    .line 174
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenWidth:I

    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenHeight:I

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 176
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mInitCenterBarPoint:Z

    .line 181
    :goto_3b
    const/4 v0, 0x3

    .line 223
    :cond_3c
    :goto_3c
    packed-switch v0, :pswitch_data_fa

    .line 228
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mSupportSplitDocking:Z

    if-nez v2, :cond_f6

    .line 229
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenWidth:I

    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenHeight:I

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 230
    const/16 v1, 0xf

    goto :goto_a

    .line 178
    :cond_4f
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenWidth:I

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCenterBarPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 179
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mInitCenterBarPoint:Z

    goto :goto_3b

    .line 182
    :cond_5d
    int-to-float v2, p2

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenHeight:I

    int-to-float v3, v3

    const v4, 0x3f6e147b

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3c

    .line 184
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCenterBarPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenHeight:I

    if-lt v2, v3, :cond_83

    .line 185
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenHeight:I

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenWidth:I

    iget v5, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenHeight:I

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 187
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mInitCenterBarPoint:Z

    .line 194
    :goto_80
    const/16 v0, 0xc

    goto :goto_3c

    .line 189
    :cond_83
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCenterBarPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenWidth:I

    iget v5, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenHeight:I

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 191
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mInitCenterBarPoint:Z

    goto :goto_80

    .line 197
    :cond_93
    int-to-float v2, p1

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_bf

    .line 198
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCenterBarPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-gtz v2, :cond_b1

    .line 199
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenWidth:I

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenHeight:I

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 201
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mInitCenterBarPoint:Z

    .line 207
    :goto_af
    const/4 v0, 0x3

    goto :goto_3c

    .line 203
    :cond_b1
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCenterBarPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenHeight:I

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 205
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mInitCenterBarPoint:Z

    goto :goto_af

    .line 208
    :cond_bf
    int-to-float v2, p1

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenWidth:I

    int-to-float v3, v3

    const v4, 0x3f75c28f

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3c

    .line 210
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCenterBarPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenWidth:I

    if-lt v2, v3, :cond_e6

    .line 211
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenWidth:I

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenWidth:I

    iget v5, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenHeight:I

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 213
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mInitCenterBarPoint:Z

    .line 219
    :goto_e2
    const/16 v0, 0xc

    goto/16 :goto_3c

    .line 215
    :cond_e6
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCenterBarPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenWidth:I

    iget v5, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenHeight:I

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 217
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mInitCenterBarPoint:Z

    goto :goto_e2

    :cond_f6
    :pswitch_f6
    move v1, v0

    .line 234
    goto/16 :goto_a

    .line 223
    nop

    :pswitch_data_fa
    .packed-switch 0x0
        :pswitch_f6
    .end packed-switch
.end method

.method public clear()V
    .registers 3

    .prologue
    const/16 v1, 0x65

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingZone:I

    .line 100
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 101
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 104
    :cond_17
    return-void
.end method

.method public getBounds()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/multiwindow/Docking;->isDocking()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getZone()I
    .registers 2

    .prologue
    .line 157
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingZone:I

    return v0
.end method

.method public init()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 76
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mTransitionEnabled:Z

    if-nez v3, :cond_7

    .line 96
    :goto_6
    return-void

    .line 79
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/Docking;->checkStyleTransitionEnable()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 80
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v3, v1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getFrontActivityMultiWindowStyle(I)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 82
    .local v0, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/multiwindow/Docking;->isFullScreenOnly(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v3

    if-nez v3, :cond_4a

    :goto_19
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mSupportSplitDocking:Z

    .line 83
    iput v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingZone:I

    .line 86
    .end local v0    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_1d
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v1

    if-eqz v1, :cond_4c

    .line 87
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v1

    iget v1, v1, Landroid/view/DisplayInfo;->appWidth:I

    iput v1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenWidth:I

    .line 88
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v1

    iget v1, v1, Landroid/view/DisplayInfo;->appHeight:I

    iput v1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenHeight:I

    .line 94
    :goto_3f
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mInitCenterBarPoint:Z

    .line 95
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getCenterBarPoint()Landroid/graphics/Point;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCenterBarPoint:Landroid/graphics/Point;

    goto :goto_6

    .restart local v0    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_4a
    move v1, v2

    .line 82
    goto :goto_19

    .line 90
    .end local v0    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_4c
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenWidth:I

    .line 91
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenHeight:I

    goto :goto_3f
.end method

.method public isDocking()Z
    .registers 2

    .prologue
    .line 153
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingZone:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setOnDockingListener(Lcom/android/internal/policy/impl/multiwindow/Docking$OnDockingListener;)V
    .registers 2
    .param p1, "l"    # Lcom/android/internal/policy/impl/multiwindow/Docking$OnDockingListener;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingListener:Lcom/android/internal/policy/impl/multiwindow/Docking$OnDockingListener;

    .line 73
    return-void
.end method

.method public updateZone(II)Z
    .registers 10
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v1, 0x0

    const-wide/16 v5, 0x2bc

    const/16 v4, 0x65

    .line 118
    :try_start_5
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mTransitionEnabled:Z
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_b4

    if-nez v2, :cond_2f

    .line 134
    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingZone:I

    if-nez v2, :cond_1b

    .line 135
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 136
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 140
    :cond_1a
    :goto_1a
    return v1

    .line 139
    :cond_1b
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 140
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1a

    .line 121
    :cond_2f
    :try_start_2f
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingZone:I

    .line 122
    .local v0, "lastZone":I
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/impl/multiwindow/Docking;->checkDockingWindow(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingZone:I

    .line 124
    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingZone:I
    :try_end_39
    .catchall {:try_start_2f .. :try_end_39} :catchall_b4

    if-ne v0, v2, :cond_61

    .line 134
    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingZone:I

    if-nez v2, :cond_4d

    .line 135
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 136
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1a

    .line 139
    :cond_4d
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 140
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1a

    .line 128
    :cond_61
    :try_start_61
    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingZone:I
    :try_end_63
    .catchall {:try_start_61 .. :try_end_63} :catchall_b4

    if-nez v2, :cond_8b

    .line 134
    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingZone:I

    if-nez v2, :cond_77

    .line 135
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 136
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1a

    .line 139
    :cond_77
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 140
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1a

    .line 132
    :cond_8b
    const/4 v1, 0x1

    .line 134
    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingZone:I

    if-nez v2, :cond_9f

    .line 135
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 136
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_1a

    .line 139
    :cond_9f
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 140
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1a

    .line 134
    .end local v0    # "lastZone":I
    :catchall_b4
    move-exception v1

    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingZone:I

    if-nez v2, :cond_c7

    .line 135
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_c6

    .line 136
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 140
    :cond_c6
    :goto_c6
    throw v1

    .line 139
    :cond_c7
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_c6

    .line 140
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_c6
.end method
