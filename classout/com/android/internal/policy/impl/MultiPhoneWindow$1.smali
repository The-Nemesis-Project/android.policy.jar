.class Lcom/android/internal/policy/impl/MultiPhoneWindow$1;
.super Ljava/lang/Object;
.source "MultiPhoneWindow.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MultiPhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V
    .registers 2

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$1;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 23
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 217
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v11, v0, [I

    .line 218
    .local v11, "screenPos":[I
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 219
    .local v6, "displayFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 220
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$1;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 223
    .local v4, "context":Landroid/content/Context;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v16

    .line 224
    .local v16, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 225
    .local v7, "height":I
    const/16 v18, 0x1

    aget v18, v11, v18

    div-int/lit8 v19, v7, 0x2

    add-int v8, v18, v19

    .line 226
    .local v8, "midy":I
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v18

    move-object/from16 v0, v18

    iget v12, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 228
    .local v12, "screenWidth":I
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v18

    move-object/from16 v0, v18

    iget v10, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 233
    .local v10, "screenHeight":I
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v18

    move-object/from16 v0, v18

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    .line 234
    .local v5, "density":F
    const/high16 v18, 0x42200000

    mul-float v18, v18, v5

    move/from16 v0, v18

    float-to-int v14, v0

    .line 238
    .local v14, "tempToastHeight":I
    const/4 v13, 0x0

    .line 239
    .local v13, "statusBarHeight":I
    const-string v18, "window"

    invoke-static/range {v18 .. v18}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v17

    .line 241
    .local v17, "wm":Landroid/view/IWindowManager;
    :try_start_65
    invoke-interface/range {v17 .. v17}, Landroid/view/IWindowManager;->isStatusBarVisible()Z

    move-result v18

    if-eqz v18, :cond_76

    .line 242
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x105000c

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_75
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_75} :catch_119

    move-result v13

    .line 249
    :cond_76
    :goto_76
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$1;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getAppMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v9

    .line 250
    .local v9, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-eqz v9, :cond_c0

    invoke-virtual {v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c0

    .line 251
    const/4 v13, 0x0

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$1;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_ab

    if-gt v12, v10, :cond_bd

    :cond_ab
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$1;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v18

    if-nez v18, :cond_c0

    if-ge v12, v10, :cond_c0

    .line 254
    :cond_bd
    move v15, v12

    .line 255
    .local v15, "tempWidth":I
    move v12, v10

    .line 256
    move v10, v15

    .line 261
    .end local v15    # "tempWidth":I
    :cond_c0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v4, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 263
    .local v3, "cheatSheet":Landroid/widget/Toast;
    const/16 v18, 0x1

    aget v18, v11, v18

    add-int v18, v18, v7

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    sub-int v19, v19, v14

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_103

    .line 265
    const/16 v18, 0x35

    const/16 v19, 0x0

    aget v19, v11, v19

    sub-int v19, v12, v19

    div-int/lit8 v20, v16, 0x2

    sub-int v19, v19, v20

    const/16 v20, 0x1

    aget v20, v11, v20

    add-int v20, v20, v7

    sub-int v20, v20, v13

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v3, v0, v1, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 274
    :goto_fd
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 275
    const/16 v18, 0x1

    return v18

    .line 269
    :cond_103
    const/16 v18, 0x51

    const/16 v19, 0x0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    sub-int v20, v10, v20

    add-int v20, v20, v7

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v3, v0, v1, v2}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_fd

    .line 244
    .end local v3    # "cheatSheet":Landroid/widget/Toast;
    .end local v9    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :catch_119
    move-exception v18

    goto/16 :goto_76
.end method
