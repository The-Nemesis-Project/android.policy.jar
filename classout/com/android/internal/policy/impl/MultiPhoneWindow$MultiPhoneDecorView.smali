.class final Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;
.super Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
.source "MultiPhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MultiPhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MultiPhoneDecorView"
.end annotation


# instance fields
.field private mBorderPaintInner:Landroid/graphics/Paint;

.field private mFixedRatio:F

.field private mGuideViewBound:Landroid/graphics/Rect;

.field private mIsResize:Z

.field private mLastHoverEdge:Z

.field private mLastMoveX:I

.field private mLastMoveY:I

.field private mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

.field final synthetic this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/content/Context;I)V
    .registers 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "featureId"    # I

    .prologue
    const/4 v1, 0x0

    .line 385
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .line 386
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;-><init>(Lcom/android/internal/policy/impl/PhoneWindow;Landroid/content/Context;I)V

    .line 380
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mIsResize:Z

    .line 381
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mFixedRatio:F

    .line 382
    new-instance v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    invoke-direct {v0, v1, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    .line 383
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    .line 387
    return-void
.end method


# virtual methods
.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 585
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    .line 586
    .local v4, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v7

    if-ne v7, v9, :cond_16

    invoke-virtual {v4, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 587
    :cond_16
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 644
    :goto_1a
    return v5

    .line 589
    :cond_1b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTitleBarHeight:I
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v8

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2f

    .line 590
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    goto :goto_1a

    .line 593
    :cond_2f
    const/4 v1, -0x1

    .line 594
    .local v1, "hoverIcon":I
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_9a

    move v3, v5

    .line 596
    .local v3, "isMouse":Z
    :goto_38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v8, 0x7

    if-eq v7, v8, :cond_47

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/16 v8, 0x9

    if-ne v7, v8, :cond_e7

    .line 598
    :cond_47
    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    if-nez v6, :cond_9c

    .line 599
    new-instance v6, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$500(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    .line 606
    :goto_5e
    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->check(II)V

    .line 608
    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->isEdge()Z

    move-result v2

    .line 610
    .local v2, "isEdge":Z
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastHoverEdge:Z

    if-eq v6, v2, :cond_8d

    .line 611
    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    invoke-virtual {v6, v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->isEdge(I)Z

    move-result v6

    if-eqz v6, :cond_cf

    .line 612
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    invoke-virtual {v5, v10}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->isEdge(I)Z

    move-result v5

    if-eqz v5, :cond_b6

    .line 613
    if-eqz v3, :cond_b3

    const/16 v1, 0x6d

    .line 624
    :goto_8b
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastHoverEdge:Z

    .line 633
    .end local v2    # "isEdge":Z
    :cond_8d
    :goto_8d
    if-lez v1, :cond_95

    .line 634
    if-eqz v3, :cond_f8

    .line 635
    const/4 v5, -0x1

    :try_start_92
    invoke-static {v1, v5}, Landroid/view/PointerIcon;->setMouseIcon(II)V
    :try_end_95
    .catch Landroid/os/RemoteException; {:try_start_92 .. :try_end_95} :catch_fd

    .line 644
    :cond_95
    :goto_95
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    goto :goto_1a

    .end local v3    # "isMouse":Z
    :cond_9a
    move v3, v6

    .line 594
    goto :goto_38

    .line 602
    .restart local v3    # "isMouse":Z
    :cond_9c
    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->clear()V

    .line 603
    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$500(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->set(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_5e

    .line 613
    .restart local v2    # "isEdge":Z
    :cond_b3
    const/16 v1, 0x9

    goto :goto_8b

    .line 614
    :cond_b6
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->isEdge(I)Z

    move-result v5

    if-eqz v5, :cond_c8

    .line 615
    if-eqz v3, :cond_c5

    const/16 v1, 0x6c

    :goto_c4
    goto :goto_8b

    :cond_c5
    const/16 v1, 0x8

    goto :goto_c4

    .line 617
    :cond_c8
    if-eqz v3, :cond_cd

    const/16 v1, 0x6b

    :goto_cc
    goto :goto_8b

    :cond_cd
    const/4 v1, 0x7

    goto :goto_cc

    .line 619
    :cond_cf
    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    const/16 v7, 0xc

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->isEdge(I)Z

    move-result v6

    if-eqz v6, :cond_e0

    .line 620
    if-eqz v3, :cond_de

    const/16 v1, 0x6a

    :goto_dd
    goto :goto_8b

    :cond_de
    const/4 v1, 0x6

    goto :goto_dd

    .line 622
    :cond_e0
    if-eqz v3, :cond_e5

    const/16 v1, 0x65

    :goto_e4
    goto :goto_8b

    :cond_e5
    move v1, v5

    goto :goto_e4

    .line 627
    .end local v2    # "isEdge":Z
    :cond_e7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_8d

    .line 628
    if-eqz v3, :cond_f6

    const/16 v1, 0x65

    .line 629
    :goto_f3
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastHoverEdge:Z

    goto :goto_8d

    :cond_f6
    move v1, v5

    .line 628
    goto :goto_f3

    .line 637
    :cond_f8
    const/4 v5, -0x1

    :try_start_f9
    invoke-static {v1, v5}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_fc
    .catch Landroid/os/RemoteException; {:try_start_f9 .. :try_end_fc} :catch_fd

    goto :goto_95

    .line 640
    :catch_fd
    move-exception v0

    .line 641
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "MultiPhoneWindow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to change Pen Point to HOVERING / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_95
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 391
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v5

    .line 392
    .local v5, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_14

    const/4 v7, 0x4

    invoke-virtual {v5, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 393
    :cond_14
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    .line 539
    :goto_18
    return v7

    .line 395
    :cond_19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTitleBarHeight:I
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v8

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_36

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mIsResize:Z

    if-nez v7, :cond_36

    .line 396
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->clear()V

    .line 397
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    goto :goto_18

    .line 400
    :cond_36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_344

    .line 539
    :cond_3d
    :goto_3d
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    goto :goto_18

    .line 402
    :pswitch_42
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    const/4 v8, 0x1

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->initStackBound(Z)V
    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/impl/MultiPhoneWindow;Z)V

    .line 404
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->clear()V

    .line 405
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;
    invoke-static {v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$500(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->set(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 407
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveX:I

    .line 408
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveY:I

    .line 409
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveX:I

    iget v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveY:I

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->check(II)V

    .line 410
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->isEdge()Z

    move-result v7

    if-eqz v7, :cond_3d

    .line 411
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->forceHideInputMethod()Z
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    .line 413
    :try_start_82
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/os/SystemVibrator;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIvt:[B
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)[B

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/os/SystemVibrator;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_9b} :catch_c6

    .line 417
    :goto_9b
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 418
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 419
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v8

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;)V
    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1000(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;)V

    .line 420
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mIsResize:Z

    .line 421
    const/4 v7, 0x1

    goto/16 :goto_18

    .line 414
    :catch_c6
    move-exception v1

    .line 415
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9b

    .line 426
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_cb
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->isEdge()Z

    move-result v7

    if-eqz v7, :cond_293

    .line 428
    const/high16 v7, 0x10000

    invoke-virtual {v5, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-nez v7, :cond_19a

    .line 429
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_228

    .line 430
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v7

    iget v8, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    float-to-int v9, v9

    iget v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveX:I

    sub-int/2addr v9, v10

    add-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Rect;->left:I

    .line 435
    :cond_f7
    :goto_f7
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_114

    .line 436
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v7

    iget v8, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    iget v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveY:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 439
    :cond_114
    const v7, 0x8000

    invoke-virtual {v5, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_183

    .line 440
    iget v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mFixedRatio:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_135

    .line 441
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    iput v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mFixedRatio:F

    .line 443
    :cond_135
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 444
    .local v6, "width":I
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 445
    .local v2, "height":I
    int-to-float v7, v6

    int-to-float v8, v2

    div-float v0, v7, v8

    .line 447
    .local v0, "curRatio":F
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->isEdge(I)Z

    move-result v7

    if-nez v7, :cond_160

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_247

    .line 448
    :cond_160
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 449
    int-to-float v7, v6

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mFixedRatio:F

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 450
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v2

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 456
    .end local v0    # "curRatio":F
    .end local v2    # "height":I
    .end local v6    # "width":I
    :cond_183
    :goto_183
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveX:I

    .line 457
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveY:I

    .line 458
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveX:I

    iget v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveY:I

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->check(II)V

    .line 461
    :cond_19a
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 462
    const/4 v4, 0x0

    .line 463
    .local v4, "minWidth":I
    const/4 v3, 0x0

    .line 465
    .local v3, "minHeight":I
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_25f

    .line 466
    sget-object v7, Lcom/android/internal/policy/impl/MultiPhoneWindow;->sMinimumStackBoundForPortraitOrient:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 467
    sget-object v7, Lcom/android/internal/policy/impl/MultiPhoneWindow;->sMinimumStackBoundForPortraitOrient:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 473
    :goto_1c2
    const/high16 v7, 0x10000

    invoke-virtual {v5, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_1d6

    .line 474
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 475
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 478
    :cond_1d6
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_26d

    .line 479
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-gt v7, v4, :cond_1f0

    .line 480
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v4

    iput v8, v7, Landroid/graphics/Rect;->left:I

    .line 488
    :cond_1f0
    :goto_1f0
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_20a

    .line 489
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-gt v7, v3, :cond_20a

    .line 490
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v3

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 494
    :cond_20a
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-ne v7, v4, :cond_28a

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-ne v7, v3, :cond_28a

    .line 496
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    const/4 v9, 0x1

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;I)V
    invoke-static {v7, v8, v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1100(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;I)V

    .line 500
    :goto_222
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mIsResize:Z

    .line 502
    const/4 v7, 0x1

    goto/16 :goto_18

    .line 431
    .end local v3    # "minHeight":I
    .end local v4    # "minWidth":I
    :cond_228
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_f7

    .line 432
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v7

    iget v8, v7, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    float-to-int v9, v9

    iget v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveX:I

    sub-int/2addr v9, v10

    add-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Rect;->right:I

    goto/16 :goto_f7

    .line 452
    .restart local v0    # "curRatio":F
    .restart local v2    # "height":I
    .restart local v6    # "width":I
    :cond_247
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->left:I

    int-to-float v9, v2

    iget v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mFixedRatio:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Rect;->right:I

    goto/16 :goto_183

    .line 469
    .end local v0    # "curRatio":F
    .end local v2    # "height":I
    .end local v6    # "width":I
    .restart local v3    # "minHeight":I
    .restart local v4    # "minWidth":I
    :cond_25f
    sget-object v7, Lcom/android/internal/policy/impl/MultiPhoneWindow;->sMinimumStackBoundForLandscapeOrient:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 470
    sget-object v7, Lcom/android/internal/policy/impl/MultiPhoneWindow;->sMinimumStackBoundForLandscapeOrient:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v3

    goto/16 :goto_1c2

    .line 482
    :cond_26d
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_1f0

    .line 483
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-gt v7, v4, :cond_1f0

    .line 484
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v4

    iput v8, v7, Landroid/graphics/Rect;->right:I

    goto/16 :goto_1f0

    .line 498
    :cond_28a
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    const/4 v9, 0x0

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;I)V
    invoke-static {v7, v8, v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1100(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;I)V

    goto :goto_222

    .line 503
    .end local v3    # "minHeight":I
    .end local v4    # "minWidth":I
    :cond_293
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->isCandidate()Z

    move-result v7

    if-eqz v7, :cond_3d

    .line 504
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveX:I

    .line 505
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveY:I

    .line 506
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveX:I

    iget v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveY:I

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->check(II)V

    .line 507
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->isEdge()Z

    move-result v7

    if-eqz v7, :cond_3d

    .line 508
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->forceHideInputMethod()Z
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    .line 510
    :try_start_2bf
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/os/SystemVibrator;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIvt:[B
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)[B

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/os/SystemVibrator;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V
    :try_end_2d8
    .catch Ljava/lang/Exception; {:try_start_2bf .. :try_end_2d8} :catch_306

    .line 514
    :goto_2d8
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 515
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 516
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v8

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;)V
    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1000(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;)V

    .line 517
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mIsResize:Z

    .line 518
    const/4 v7, 0x3

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->setAction(I)V

    goto/16 :goto_3d

    .line 511
    :catch_306
    move-exception v1

    .line 512
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2d8

    .line 525
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_30b
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mIsResize:Z

    .line 526
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    if-eqz v7, :cond_3d

    .line 527
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->isEdge()Z

    move-result v7

    if-eqz v7, :cond_33d

    .line 528
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    const/4 v9, 0x1

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;Z)V
    invoke-static {v7, v8, v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1200(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;Z)V

    .line 529
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    .line 530
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    .line 531
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->dismissGuide()V
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    .line 532
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustScaleFactor()V
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    .line 533
    const/4 v7, 0x1

    goto/16 :goto_18

    .line 535
    :cond_33d
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->clear()V

    goto/16 :goto_3d

    .line 400
    :pswitch_data_344
    .packed-switch 0x0
        :pswitch_42
        :pswitch_30b
        :pswitch_cb
        :pswitch_30b
    .end packed-switch
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, -0x2

    const/4 v1, 0x0

    .line 556
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->draw(Landroid/graphics/Canvas;)V

    .line 558
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsBorder:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 582
    :goto_d
    return-void

    .line 562
    :cond_e
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    .line 563
    .local v8, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v0, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v0, v2, :cond_23

    iget v0, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v0, v2, :cond_23

    .line 565
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsBorder:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1702(Lcom/android/internal/policy/impl/MultiPhoneWindow;Z)Z

    goto :goto_d

    .line 569
    :cond_23
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mBorderPaintInner:Landroid/graphics/Paint;

    if-nez v0, :cond_40

    .line 570
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mBorderPaintInner:Landroid/graphics/Paint;

    .line 571
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mBorderPaintInner:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLineColor:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1500(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 572
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mBorderPaintInner:Landroid/graphics/Paint;

    const/high16 v2, 0x41900000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 575
    :cond_40
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->getMeasuredWidth()I

    move-result v10

    .line 576
    .local v10, "right":I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->getMeasuredHeight()I

    move-result v9

    .line 578
    .local v9, "bottom":I
    int-to-float v3, v10

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mBorderPaintInner:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 579
    int-to-float v2, v9

    int-to-float v3, v10

    int-to-float v4, v9

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mBorderPaintInner:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 580
    int-to-float v3, v10

    int-to-float v5, v10

    int-to-float v6, v9

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mBorderPaintInner:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 581
    int-to-float v4, v9

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mBorderPaintInner:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_d
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 649
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->onAttachedToWindow()V

    .line 651
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->hackTurnOffWindowResizeAnim(Z)V

    .line 653
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustScaleFactor()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    .line 655
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVideoCapabilityReceiver:Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;->register()V

    .line 656
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 673
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVideoCapabilityReceiver:Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;->unregister()V

    .line 674
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 544
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->onWindowFocusChanged(Z)V

    .line 545
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mBorderPaintInner:Landroid/graphics/Paint;

    if-eqz v0, :cond_17

    .line 546
    if-eqz p1, :cond_18

    .line 547
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mBorderPaintInner:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLineColor:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1500(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 551
    :goto_14
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->invalidate()V

    .line 553
    :cond_17
    return-void

    .line 549
    :cond_18
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mBorderPaintInner:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLineColorUnFocused:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_14
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 660
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_40

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_40

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v2

    if-eq p1, v2, :cond_40

    .line 661
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # setter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDecorBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v2, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2202(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 662
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_28
    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 663
    .local v0, "contents":Landroid/view/ViewGroup;
    if-eqz v0, :cond_28

    .line 664
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDecorBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_28

    .line 667
    .end local v0    # "contents":Landroid/view/ViewGroup;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_40
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 669
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->hackTurnOffWindowResizeAnim(Z)V

    .line 670
    return-void
.end method
