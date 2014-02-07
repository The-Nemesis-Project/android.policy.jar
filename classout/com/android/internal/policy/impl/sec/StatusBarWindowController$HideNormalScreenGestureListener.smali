.class final Lcom/android/internal/policy/impl/sec/StatusBarWindowController$HideNormalScreenGestureListener;
.super Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper$SamsungPolicyOnGestureListener;
.source "StatusBarWindowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/StatusBarWindowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "HideNormalScreenGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/sec/StatusBarWindowController;)V
    .registers 2

    .prologue
    .line 505
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$HideNormalScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper$SamsungPolicyOnGestureListener;-><init>()V

    .line 507
    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 555
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$HideNormalScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarExpanded:Z

    if-eqz v1, :cond_8

    .line 574
    :cond_7
    :goto_7
    return v3

    .line 559
    :cond_8
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$HideNormalScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarHiddenOnNormalScreen:Z

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$HideNormalScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget v1, v1, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarHeight:I

    mul-int/lit8 v0, v1, 0x2

    .line 564
    .local v0, "controlAllowHeight":I
    :goto_14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    int-to-float v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_29

    .line 565
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$HideNormalScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iput-boolean v3, v1, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mReadyControlStatusBar:Z

    goto :goto_7

    .line 559
    .end local v0    # "controlAllowHeight":I
    :cond_22
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$HideNormalScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget v1, v1, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarHeight:I

    mul-int/lit8 v0, v1, 0x5

    goto :goto_14

    .line 569
    .restart local v0    # "controlAllowHeight":I
    :cond_29
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$HideNormalScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mReadyControlStatusBar:Z

    if-eqz v1, :cond_7

    .line 570
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$HideNormalScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mReadyControlStatusBar:Z

    goto :goto_7
.end method

.method public onFinished(Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$HideNormalScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarExpanded:Z

    if-eqz v0, :cond_7

    .line 621
    :goto_6
    return-void

    .line 620
    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$HideNormalScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mReadyControlStatusBar:Z

    goto :goto_6
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 8
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v2, 0x1

    .line 522
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$HideNormalScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarExpanded:Z

    if-eqz v0, :cond_8

    .line 542
    :cond_7
    :goto_7
    return v2

    .line 527
    :cond_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$HideNormalScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mReadyControlStatusBar:Z

    if-eqz v0, :cond_7

    .line 528
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$HideNormalScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarHiddenOnNormalScreen:Z

    if-eqz v0, :cond_2f

    .line 530
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$HideNormalScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget v1, v1, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mFlingGestureMaxXVelocityPx:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$HideNormalScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget v0, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mFlingGestureMinVelocityPy:F

    cmpl-float v0, p4, v0

    if-ltz v0, :cond_7

    .line 532
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$HideNormalScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->performHideStatusBarOnNormalScreen(Z)V

    goto :goto_7

    .line 536
    :cond_2f
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$HideNormalScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget v1, v1, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mFlingGestureMaxXVelocityPx:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$HideNormalScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget v0, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mFlingGestureMinVelocityPy:F

    neg-float v0, v0

    cmpg-float v0, p4, v0

    if-gtz v0, :cond_7

    .line 538
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$HideNormalScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->performHideStatusBarOnNormalScreen(Z)V

    goto :goto_7
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 9
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 587
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$HideNormalScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarExpanded:Z

    if-eqz v0, :cond_9

    .line 603
    :cond_8
    :goto_8
    return v3

    .line 591
    :cond_9
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$HideNormalScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mReadyControlStatusBar:Z

    if-eqz v0, :cond_8

    .line 592
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$HideNormalScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarHiddenOnNormalScreen:Z

    if-eqz v0, :cond_26

    .line 593
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8

    .line 594
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$HideNormalScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mReadyControlStatusBar:Z

    goto :goto_8

    .line 597
    :cond_26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_8

    .line 598
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$HideNormalScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mReadyControlStatusBar:Z

    goto :goto_8
.end method
