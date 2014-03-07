.class Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;
.super Ljava/lang/Object;
.source "MultiPhoneWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MultiPhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiPhoneWindowListener"
.end annotation


# instance fields
.field private interporation:I

.field private lastMoveX:I

.field private lastMoveY:I

.field private moving:Z

.field private sipHiding:Z

.field final synthetic this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 684
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 680
    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->interporation:I

    .line 681
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->moving:Z

    .line 682
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->sipHiding:Z

    .line 685
    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105010e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->interporation:I

    .line 686
    return-void
.end method

.method private action_down(II)V
    .registers 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 777
    iput p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->lastMoveX:I

    .line 778
    iput p2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->lastMoveY:I

    .line 780
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 782
    return-void
.end method

.method private action_move(II)V
    .registers 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 785
    iget v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->lastMoveX:I

    sub-int v0, p1, v2

    .line 786
    .local v0, "dx":I
    iget v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->lastMoveY:I

    sub-int v1, p2, v2

    .line 788
    .local v1, "dy":I
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1c

    .line 789
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    const/4 v3, 0x1

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->moveStackBound(IIZ)V
    invoke-static {v2, v0, v1, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2700(Lcom/android/internal/policy/impl/MultiPhoneWindow;IIZ)V

    .line 794
    :goto_17
    iput p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->lastMoveX:I

    .line 795
    iput p2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->lastMoveY:I

    .line 796
    return-void

    .line 791
    :cond_1c
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 792
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v3

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;)V
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1000(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;)V

    goto :goto_17
.end method

.method private action_up(II)V
    .registers 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 799
    iget v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->lastMoveX:I

    sub-int v0, p1, v2

    .line 800
    .local v0, "dx":I
    iget v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->lastMoveY:I

    sub-int v1, p2, v2

    .line 802
    .local v1, "dy":I
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_18

    .line 803
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    const/4 v3, 0x0

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->moveStackBound(IIZ)V
    invoke-static {v2, v0, v1, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2700(Lcom/android/internal/policy/impl/MultiPhoneWindow;IIZ)V

    .line 810
    :goto_17
    return-void

    .line 805
    :cond_18
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 806
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v3

    const/4 v4, 0x1

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;Z)V
    invoke-static {v2, v3, v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1200(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;Z)V

    .line 807
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->dismissGuide()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    goto :goto_17
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 690
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_54

    .line 717
    :cond_8
    :goto_8
    :pswitch_8
    return-void

    .line 693
    :pswitch_9
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v1, v2, v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->minimizeWindow(IZ)V

    goto :goto_8

    .line 697
    :pswitch_f
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    const/4 v2, 0x1

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->requestState(I)V
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2300(Lcom/android/internal/policy/impl/MultiPhoneWindow;I)V

    goto :goto_8

    .line 701
    :pswitch_16
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 702
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2500(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    move-result-object v1

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2500(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;->onWindowExit()Z

    move-result v1

    if-nez v1, :cond_3a

    .line 704
    const-string v1, "MultiPhoneWindow"

    const-string v2, "onWindowExit return false"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 708
    :cond_3a
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->forceHideInputMethod()Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    .line 710
    :try_start_3f
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finishAffinity()V
    :try_end_48
    .catch Ljava/lang/IllegalStateException; {:try_start_3f .. :try_end_48} :catch_49

    goto :goto_8

    .line 711
    :catch_49
    move-exception v0

    .line 712
    .local v0, "e":Ljava/lang/IllegalStateException;
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_8

    .line 690
    :pswitch_data_54
    .packed-switch 0x102035e
        :pswitch_9
        :pswitch_8
        :pswitch_f
        :pswitch_8
        :pswitch_16
    .end packed-switch
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 814
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x102035c

    if-eq v1, v2, :cond_b

    .line 827
    :cond_a
    :goto_a
    return v3

    .line 819
    :cond_b
    :try_start_b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_22

    .line 820
    const/4 v1, 0x5

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_18} :catch_19

    goto :goto_a

    .line 824
    :catch_19
    move-exception v0

    .line 825
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MultiPhoneWindow"

    const-string v2, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 821
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_22
    :try_start_22
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_a

    .line 822
    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_2f} :catch_19

    goto :goto_a
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 723
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_c8

    move v1, v2

    .line 774
    :cond_b
    :goto_b
    return v1

    .line 725
    :pswitch_c
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->initStackBound(Z)V
    invoke-static {v3, v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/impl/MultiPhoneWindow;Z)V

    .line 726
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->moving:Z

    .line 727
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->sipHiding:Z

    .line 728
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->forceHideInputMethod()Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 729
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->sipHiding:Z

    goto :goto_b

    .line 732
    :cond_20
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_35

    .line 733
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 735
    :cond_35
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->action_down(II)V

    goto :goto_b

    .line 739
    :pswitch_43
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->sipHiding:Z

    if-nez v2, :cond_b

    .line 742
    iget v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->lastMoveX:I

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->interporation:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_6d

    iget v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->lastMoveY:I

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->interporation:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_b

    .line 744
    :cond_6d
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->moving:Z

    .line 745
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->action_move(II)V

    goto :goto_b

    .line 751
    :pswitch_7d
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->sipHiding:Z

    if-nez v3, :cond_b

    .line 754
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->moving:Z

    if-eqz v3, :cond_ab

    .line 755
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->moving:Z

    .line 756
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v3, v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->action_up(II)V

    .line 766
    :cond_94
    :goto_94
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_b

    .line 767
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setPressed(Z)V

    goto/16 :goto_b

    .line 757
    :cond_ab
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v3

    if-ne v3, v4, :cond_94

    .line 762
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 763
    .local v0, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v0, v4, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 764
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I
    invoke-static {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v4

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->requestState(I)V
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2300(Lcom/android/internal/policy/impl/MultiPhoneWindow;I)V

    goto :goto_94

    .line 723
    :pswitch_data_c8
    .packed-switch 0x0
        :pswitch_c
        :pswitch_7d
        :pswitch_43
        :pswitch_7d
    .end packed-switch
.end method
