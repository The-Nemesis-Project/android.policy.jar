.class public Lcom/android/internal/policy/impl/RecentApplicationsDialog;
.super Landroid/app/Dialog;
.source "RecentApplicationsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;
    }
.end annotation


# static fields
.field private static final DBG_FORCE_EMPTY_LIST:Z = false

.field private static final MAX_RECENT_TASKS:I = 0x10

.field private static final NUM_BUTTONS:I = 0x8

.field private static deviceType:Ljava/lang/String;

.field private static sStatusBar:Landroid/app/StatusBarManager;


# instance fields
.field private isTablet:Z

.field mBroadcastIntentFilter:Landroid/content/IntentFilter;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mCleanup:Ljava/lang/Runnable;

.field mHandler:Landroid/os/Handler;

.field final mIcons:[Landroid/view/View;

.field mNoAppsText:Landroid/view/View;

.field mTitleText:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    const v0, 0x1030335

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 58
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/view/View;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->isTablet:Z

    .line 62
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mBroadcastIntentFilter:Landroid/content/IntentFilter;

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mHandler:Landroid/os/Handler;

    .line 70
    new-instance v0, Lcom/android/internal/policy/impl/RecentApplicationsDialog$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog$1;-><init>(Lcom/android/internal/policy/impl/RecentApplicationsDialog;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mCleanup:Ljava/lang/Runnable;

    .line 392
    new-instance v0, Lcom/android/internal/policy/impl/RecentApplicationsDialog$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog$3;-><init>(Lcom/android/internal/policy/impl/RecentApplicationsDialog;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 83
    return-void
.end method

.method private reloadButtons()V
    .registers 26

    .prologue
    .line 296
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 297
    .local v6, "context":Landroid/content/Context;
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 298
    .local v16, "pm":Landroid/content/pm/PackageManager;
    const-string v22, "activity"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    .line 300
    .local v5, "am":Landroid/app/ActivityManager;
    const/16 v22, 0x10

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v17

    .line 303
    .local v17, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    new-instance v22, Landroid/content/Intent;

    const-string v23, "android.intent.action.MAIN"

    invoke-direct/range {v22 .. v23}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v23, "android.intent.category.HOME"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    .line 307
    .local v7, "homeInfo":Landroid/content/pm/ActivityInfo;
    new-instance v10, Lcom/android/internal/policy/impl/IconUtilities;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v10, v0}, Lcom/android/internal/policy/impl/IconUtilities;-><init>(Landroid/content/Context;)V

    .line 312
    .local v10, "iconUtilities":Lcom/android/internal/policy/impl/IconUtilities;
    const/4 v11, 0x0

    .line 313
    .local v11, "index":I
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v15

    .line 314
    .local v15, "numTasks":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_48
    if-ge v8, v15, :cond_195

    const/16 v22, 0x8

    move/from16 v0, v22

    if-ge v11, v0, :cond_195

    .line 315
    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 320
    .local v12, "info":Landroid/app/ActivityManager$RecentTaskInfo;
    new-instance v13, Landroid/content/Intent;

    iget-object v0, v12, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 321
    .local v13, "intent":Landroid/content/Intent;
    iget-object v0, v12, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    move-object/from16 v22, v0

    if-eqz v22, :cond_72

    .line 322
    iget-object v0, v12, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 326
    :cond_72
    if-eqz v7, :cond_9b

    .line 327
    iget-object v0, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9b

    iget-object v0, v7, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9b

    .line 314
    :cond_98
    :goto_98
    add-int/lit8 v8, v8, 0x1

    goto :goto_48

    .line 335
    :cond_9b
    invoke-virtual {v13}, Landroid/content/Intent;->getFlags()I

    move-result v22

    const v23, -0x200001

    and-int v22, v22, v23

    const/high16 v23, 0x10000000

    or-int v22, v22, v23

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 337
    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v18

    .line 338
    .local v18, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v18, :cond_98

    .line 339
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 340
    .local v4, "activityInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    .line 341
    .local v20, "title":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 343
    .local v9, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v20, :cond_98

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_98

    if-eqz v9, :cond_98

    .line 344
    sget-object v22, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->deviceType:Ljava/lang/String;

    if-eqz v22, :cond_146

    sget-object v22, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->deviceType:Ljava/lang/String;

    const-string v23, "tablet"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_146

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->isTablet:Z

    move/from16 v22, v0

    if-eqz v22, :cond_146

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/view/View;

    move-object/from16 v22, v0

    aget-object v14, v22, v11

    check-cast v14, Landroid/widget/LinearLayout;

    .line 346
    .local v14, "ll":Landroid/widget/LinearLayout;
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    invoke-virtual {v10, v9}, Lcom/android/internal/policy/impl/IconUtilities;->createIconDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 348
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ImageView;

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 349
    new-instance v19, Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;-><init>(Lcom/android/internal/policy/impl/RecentApplicationsDialog;)V

    .line 350
    .local v19, "tag":Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;
    move-object/from16 v0, v19

    iput-object v12, v0, Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;->info:Landroid/app/ActivityManager$RecentTaskInfo;

    .line 351
    move-object/from16 v0, v19

    iput-object v13, v0, Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;->intent:Landroid/content/Intent;

    .line 352
    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 353
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/view/View;->setVisibility(I)V

    .line 354
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/view/View;->setPressed(Z)V

    .line 355
    invoke-virtual {v14}, Landroid/view/ViewGroup;->clearFocus()V

    .line 356
    add-int/lit8 v11, v11, 0x1

    .line 357
    goto/16 :goto_98

    .line 358
    .end local v14    # "ll":Landroid/widget/LinearLayout;
    .end local v19    # "tag":Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;
    :cond_146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/view/View;

    move-object/from16 v22, v0

    aget-object v21, v22, v11

    check-cast v21, Landroid/widget/TextView;

    .line 359
    .local v21, "tv":Landroid/widget/TextView;
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    invoke-virtual {v10, v9}, Lcom/android/internal/policy/impl/IconUtilities;->createIconDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 361
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 362
    new-instance v19, Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;-><init>(Lcom/android/internal/policy/impl/RecentApplicationsDialog;)V

    .line 363
    .restart local v19    # "tag":Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;
    move-object/from16 v0, v19

    iput-object v12, v0, Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;->info:Landroid/app/ActivityManager$RecentTaskInfo;

    .line 364
    move-object/from16 v0, v19

    iput-object v13, v0, Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;->intent:Landroid/content/Intent;

    .line 365
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 366
    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 367
    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setPressed(Z)V

    .line 368
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->clearFocus()V

    .line 369
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_98

    .line 376
    .end local v4    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v9    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v12    # "info":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v18    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v19    # "tag":Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;
    .end local v20    # "title":Ljava/lang/String;
    .end local v21    # "tv":Landroid/widget/TextView;
    :cond_195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mNoAppsText:Landroid/view/View;

    move-object/from16 v22, v0

    check-cast v22, Landroid/widget/TextView;

    const v23, 0x10401cb

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(I)V

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mTitleText:Landroid/view/View;

    move-object/from16 v22, v0

    check-cast v22, Landroid/widget/TextView;

    const v23, 0x10401ca

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(I)V

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mNoAppsText:Landroid/view/View;

    move-object/from16 v23, v0

    if-nez v11, :cond_1d8

    const/16 v22, 0x0

    :goto_1bb
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 382
    :goto_1c2
    const/16 v22, 0x8

    move/from16 v0, v22

    if-ge v11, v0, :cond_1db

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/view/View;

    move-object/from16 v22, v0

    aget-object v22, v22, v11

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    .line 382
    add-int/lit8 v11, v11, 0x1

    goto :goto_1c2

    .line 379
    :cond_1d8
    const/16 v22, 0x8

    goto :goto_1bb

    .line 385
    :cond_1db
    return-void
.end method

.method private switchTo(Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;)V
    .registers 6
    .param p1, "tag"    # Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;

    .prologue
    .line 241
    iget-object v2, p1, Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;->info:Landroid/app/ActivityManager$RecentTaskInfo;

    iget v2, v2, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    if-ltz v2, :cond_1b

    .line 243
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 245
    .local v0, "am":Landroid/app/ActivityManager;
    iget-object v2, p1, Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;->info:Landroid/app/ActivityManager$RecentTaskInfo;

    iget v2, v2, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    .line 255
    .end local v0    # "am":Landroid/app/ActivityManager;
    :cond_1a
    :goto_1a
    return-void

    .line 246
    :cond_1b
    iget-object v2, p1, Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_1a

    .line 247
    iget-object v2, p1, Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;->intent:Landroid/content/Intent;

    const v3, 0x104000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 250
    :try_start_27
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p1, Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_30
    .catch Landroid/content/ActivityNotFoundException; {:try_start_27 .. :try_end_30} :catch_31

    goto :goto_1a

    .line 251
    :catch_31
    move-exception v1

    .line 252
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "Recent"

    const-string v3, "Unable to launch recent task"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a
.end method


# virtual methods
.method public dismissAndSwitch()V
    .registers 5

    .prologue
    .line 207
    iget-object v3, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/view/View;

    array-length v1, v3

    .line 208
    .local v1, "numIcons":I
    const/4 v2, 0x0

    .line 209
    .local v2, "tag":Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, v1, :cond_11

    .line 210
    iget-object v3, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/view/View;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1a

    .line 220
    :cond_11
    if-eqz v2, :cond_16

    .line 221
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->switchTo(Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;)V

    .line 223
    :cond_16
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 224
    return-void

    .line 213
    :cond_1a
    if-eqz v0, :cond_26

    iget-object v3, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/view/View;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 214
    :cond_26
    iget-object v3, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/view/View;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "tag":Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;
    check-cast v2, Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;

    .line 215
    .restart local v2    # "tag":Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;
    iget-object v3, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/view/View;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_11

    .line 209
    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/view/View;

    .local v0, "arr$":[Landroid/view/View;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_4
    if-ge v2, v3, :cond_13

    aget-object v1, v0, v2

    .line 231
    .local v1, "b":Landroid/view/View;
    if-ne v1, p1, :cond_17

    .line 232
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;

    .line 233
    .local v4, "tag":Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;
    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->switchTo(Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;)V

    .line 237
    .end local v1    # "b":Landroid/view/View;
    .end local v4    # "tag":Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;
    :cond_13
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 238
    return-void

    .line 230
    .restart local v1    # "b":Landroid/view/View;
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 16
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 94
    const-string v11, "ro.build.characteristics"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->deviceType:Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 96
    .local v3, "context":Landroid/content/Context;
    const-string v11, "tablet"

    const-string v12, "phone"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->isTablet:Z

    .line 97
    sget-object v11, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->sStatusBar:Landroid/app/StatusBarManager;

    if-nez v11, :cond_27

    .line 98
    const-string v11, "statusbar"

    invoke-virtual {v3, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/StatusBarManager;

    sput-object v11, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->sStatusBar:Landroid/app/StatusBarManager;

    .line 101
    :cond_27
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    .line 102
    .local v10, "window":Landroid/view/Window;
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/view/Window;->requestFeature(I)Z

    .line 103
    const/16 v11, 0x7ec

    invoke-virtual {v10, v11}, Landroid/view/Window;->setType(I)V

    .line 104
    const/high16 v11, 0x20000

    const/high16 v12, 0x20000

    invoke-virtual {v10, v11, v12}, Landroid/view/Window;->setFlags(II)V

    .line 106
    const-string v11, "Recents"

    invoke-virtual {v10, v11}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 108
    const v11, 0x10900a7

    invoke-virtual {p0, v11}, Landroid/app/Dialog;->setContentView(I)V

    .line 110
    sget-object v11, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->deviceType:Ljava/lang/String;

    if-eqz v11, :cond_f3

    sget-object v11, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->deviceType:Ljava/lang/String;

    const-string v12, "tablet"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_f3

    iget-boolean v11, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->isTablet:Z

    if-eqz v11, :cond_f3

    .line 111
    const v11, 0x10203ab

    invoke-virtual {p0, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 112
    .local v2, "baseLinearLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    iget v5, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 113
    .local v5, "dialog_width":I
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    iget v4, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 114
    .local v4, "dialog_height":I
    invoke-virtual {v10, v5, v4}, Landroid/view/Window;->setLayout(II)V

    .line 115
    iget-object v12, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/view/View;

    const/4 v13, 0x0

    const v11, 0x10203ae

    invoke-virtual {p0, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    aput-object v11, v12, v13

    .line 116
    iget-object v12, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/view/View;

    const/4 v13, 0x1

    const v11, 0x1020019

    invoke-virtual {p0, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    aput-object v11, v12, v13

    .line 117
    iget-object v12, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/view/View;

    const/4 v13, 0x2

    const v11, 0x102001a

    invoke-virtual {p0, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    aput-object v11, v12, v13

    .line 118
    iget-object v12, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/view/View;

    const/4 v13, 0x3

    const v11, 0x102001b

    invoke-virtual {p0, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    aput-object v11, v12, v13

    .line 119
    iget-object v12, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/view/View;

    const/4 v13, 0x4

    const v11, 0x10203af

    invoke-virtual {p0, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    aput-object v11, v12, v13

    .line 120
    iget-object v12, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/view/View;

    const/4 v13, 0x5

    const v11, 0x10203b0

    invoke-virtual {p0, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    aput-object v11, v12, v13

    .line 121
    iget-object v12, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/view/View;

    const/4 v13, 0x6

    const v11, 0x10203b1

    invoke-virtual {p0, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    aput-object v11, v12, v13

    .line 122
    iget-object v12, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/view/View;

    const/4 v13, 0x7

    const v11, 0x10203b2

    invoke-virtual {p0, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    aput-object v11, v12, v13

    .line 123
    new-instance v6, Lcom/android/internal/policy/impl/RecentApplicationsDialog$2;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog$2;-><init>(Lcom/android/internal/policy/impl/RecentApplicationsDialog;)V

    .line 136
    .local v6, "flistener":Landroid/view/View$OnFocusChangeListener;
    iget-object v0, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/view/View;

    .local v0, "arr$":[Landroid/view/View;
    array-length v8, v0

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_e9
    if-ge v7, v8, :cond_175

    aget-object v1, v0, v7

    .line 137
    .local v1, "b":Landroid/view/View;
    invoke-virtual {v1, v6}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 136
    add-int/lit8 v7, v7, 0x1

    goto :goto_e9

    .line 141
    .end local v0    # "arr$":[Landroid/view/View;
    .end local v1    # "b":Landroid/view/View;
    .end local v2    # "baseLinearLayout":Landroid/widget/LinearLayout;
    .end local v4    # "dialog_height":I
    .end local v5    # "dialog_width":I
    .end local v6    # "flistener":Landroid/view/View$OnFocusChangeListener;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    :cond_f3
    invoke-virtual {v10}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    .line 142
    .local v9, "params":Landroid/view/WindowManager$LayoutParams;
    const/4 v11, -0x1

    iput v11, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 143
    const/4 v11, -0x1

    iput v11, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 144
    invoke-virtual {v10, v9}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 145
    const/4 v11, 0x0

    const/4 v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/view/Window;->setFlags(II)V

    .line 146
    iget-object v12, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/view/View;

    const/4 v13, 0x0

    const v11, 0x10203ae

    invoke-virtual {p0, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    aput-object v11, v12, v13

    .line 147
    iget-object v12, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/view/View;

    const/4 v13, 0x1

    const v11, 0x1020019

    invoke-virtual {p0, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    aput-object v11, v12, v13

    .line 148
    iget-object v12, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/view/View;

    const/4 v13, 0x2

    const v11, 0x102001a

    invoke-virtual {p0, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    aput-object v11, v12, v13

    .line 149
    iget-object v12, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/view/View;

    const/4 v13, 0x3

    const v11, 0x102001b

    invoke-virtual {p0, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    aput-object v11, v12, v13

    .line 150
    iget-object v12, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/view/View;

    const/4 v13, 0x4

    const v11, 0x10203af

    invoke-virtual {p0, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    aput-object v11, v12, v13

    .line 151
    iget-object v12, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/view/View;

    const/4 v13, 0x5

    const v11, 0x10203b0

    invoke-virtual {p0, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    aput-object v11, v12, v13

    .line 152
    iget-object v12, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/view/View;

    const/4 v13, 0x6

    const v11, 0x10203b1

    invoke-virtual {p0, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    aput-object v11, v12, v13

    .line 153
    iget-object v12, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/view/View;

    const/4 v13, 0x7

    const v11, 0x10203b2

    invoke-virtual {p0, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    aput-object v11, v12, v13

    .line 156
    .end local v9    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_175
    const v11, 0x10203ad

    invoke-virtual {p0, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mNoAppsText:Landroid/view/View;

    .line 157
    const v11, 0x10203ac

    invoke-virtual {p0, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mTitleText:Landroid/view/View;

    .line 159
    iget-object v0, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/view/View;

    .restart local v0    # "arr$":[Landroid/view/View;
    array-length v8, v0

    .restart local v8    # "len$":I
    const/4 v7, 0x0

    .restart local v7    # "i$":I
    :goto_18b
    if-ge v7, v8, :cond_195

    aget-object v1, v0, v7

    .line 160
    .restart local v1    # "b":Landroid/view/View;
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    add-int/lit8 v7, v7, 0x1

    goto :goto_18b

    .line 162
    .end local v1    # "b":Landroid/view/View;
    :cond_195
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 12
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x1

    .line 166
    const/16 v7, 0x3d

    if-ne p1, v7, :cond_5c

    .line 170
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    .line 171
    .local v0, "backward":Z
    iget-object v7, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/view/View;

    array-length v5, v7

    .line 172
    .local v5, "numIcons":I
    const/4 v4, 0x0

    .line 173
    .local v4, "numButtons":I
    :goto_d
    if-ge v4, v5, :cond_1c

    iget-object v7, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/view/View;

    aget-object v7, v7, v4

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1c

    .line 174
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 176
    :cond_1c
    if-eqz v4, :cond_4f

    .line 177
    if-eqz v0, :cond_50

    add-int/lit8 v3, v4, -0x1

    .line 178
    .local v3, "nextFocus":I
    :goto_22
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_23
    if-ge v2, v4, :cond_37

    .line 179
    iget-object v7, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/view/View;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Landroid/view/View;->hasFocus()Z

    move-result v7

    if-eqz v7, :cond_57

    .line 180
    if-eqz v0, :cond_52

    .line 181
    add-int v7, v2, v4

    add-int/lit8 v7, v7, -0x1

    rem-int v3, v7, v4

    .line 188
    :cond_37
    :goto_37
    if-eqz v0, :cond_5a

    move v1, v6

    .line 189
    .local v1, "direction":I
    :goto_3a
    iget-object v7, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/view/View;

    aget-object v7, v7, v3

    invoke-virtual {v7, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result v7

    if-eqz v7, :cond_4f

    .line 190
    iget-object v7, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/view/View;

    aget-object v7, v7, v3

    invoke-static {v1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->playSoundEffect(I)V

    .line 200
    .end local v0    # "backward":Z
    .end local v1    # "direction":I
    .end local v2    # "i":I
    .end local v3    # "nextFocus":I
    .end local v4    # "numButtons":I
    .end local v5    # "numIcons":I
    :cond_4f
    :goto_4f
    return v6

    .line 177
    .restart local v0    # "backward":Z
    .restart local v4    # "numButtons":I
    .restart local v5    # "numIcons":I
    :cond_50
    const/4 v3, 0x0

    goto :goto_22

    .line 183
    .restart local v2    # "i":I
    .restart local v3    # "nextFocus":I
    :cond_52
    add-int/lit8 v7, v2, 0x1

    rem-int v3, v7, v4

    .line 185
    goto :goto_37

    .line 178
    :cond_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 188
    :cond_5a
    const/4 v1, 0x2

    goto :goto_3a

    .line 200
    .end local v0    # "backward":Z
    .end local v2    # "i":I
    .end local v3    # "nextFocus":I
    .end local v4    # "numButtons":I
    .end local v5    # "numIcons":I
    :cond_5c
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v6

    goto :goto_4f
.end method

.method public onStart()V
    .registers 4

    .prologue
    .line 262
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 263
    invoke-direct {p0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->reloadButtons()V

    .line 264
    sget-object v0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->sStatusBar:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_11

    .line 265
    sget-object v0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->sStatusBar:Landroid/app/StatusBarManager;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 269
    :cond_11
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mBroadcastIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 271
    iget-object v0, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mCleanup:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 272
    return-void
.end method

.method public onStop()V
    .registers 5

    .prologue
    .line 279
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 281
    sget-object v0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->sStatusBar:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_d

    .line 282
    sget-object v0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->sStatusBar:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 286
    :cond_d
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 288
    iget-object v0, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mCleanup:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 289
    return-void
.end method
