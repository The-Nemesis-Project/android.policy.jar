.class final Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;
.super Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper$SamsungPolicyOnGestureListener;
.source "StatusBarWindowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/StatusBarWindowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ShowFullScreenGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/sec/StatusBarWindowController;)V
    .registers 2

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper$SamsungPolicyOnGestureListener;-><init>()V

    .line 259
    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 9
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 301
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v3, v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarExpanded:Z

    if-eqz v3, :cond_9

    .line 335
    :cond_8
    :goto_8
    return v5

    .line 305
    :cond_9
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v3, v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarShownOnFullScreen:Z

    if-eqz v3, :cond_2c

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget v0, v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarHeight:I

    .line 310
    .local v0, "controlAllowHeight":I
    :goto_13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    int-to-float v4, v0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_33

    .line 311
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-object v4, v4, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultHideOnFullScreen:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 312
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iput-boolean v5, v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mReadyControlStatusBar:Z

    goto :goto_8

    .line 305
    .end local v0    # "controlAllowHeight":I
    :cond_2c
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget v3, v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarHeight:I

    mul-int/lit8 v0, v3, 0x2

    goto :goto_13

    .line 317
    .restart local v0    # "controlAllowHeight":I
    :cond_33
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v3, v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarShownOnFullScreen:Z

    if-eqz v3, :cond_57

    .line 319
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v3, v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mIsStatusBarWindow:Z

    if-nez v3, :cond_8

    .line 321
    :try_start_3f
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v2

    .line 322
    .local v2, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v2, :cond_4a

    .line 323
    invoke-interface {v2}, Lcom/android/internal/statusbar/IStatusBarService;->collapsePanels()V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_4a} :catch_50

    .line 329
    .end local v2    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_4a
    :goto_4a
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    invoke-virtual {v3, v6}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->performShowStatusBarOnFullScreen(Z)V

    goto :goto_8

    .line 325
    :catch_50
    move-exception v1

    .line 327
    .local v1, "ex":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_4a

    .line 331
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_57
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v3, v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mReadyControlStatusBar:Z

    if-eqz v3, :cond_8

    .line 332
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iput-boolean v6, v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mReadyControlStatusBar:Z

    goto :goto_8
.end method

.method public onFinished(Landroid/view/MotionEvent;)V
    .registers 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarExpanded:Z

    if-eqz v0, :cond_7

    .line 362
    :goto_6
    return-void

    .line 354
    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mReadyControlStatusBar:Z

    if-eqz v0, :cond_2b

    .line 356
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarShownOnFullScreen:Z

    if-eqz v0, :cond_2b

    .line 357
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-object v1, v1, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultHideOnFullScreen:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 358
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-object v1, v1, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultHideOnFullScreen:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 361
    :cond_2b
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mReadyControlStatusBar:Z

    goto :goto_6
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 9
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v3, 0x1

    .line 274
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarExpanded:Z

    if-eqz v0, :cond_8

    .line 287
    :cond_7
    :goto_7
    return v3

    .line 279
    :cond_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mReadyControlStatusBar:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarShownOnFullScreen:Z

    if-nez v0, :cond_7

    .line 281
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget v1, v1, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mFlingGestureMaxXVelocityPx:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget v0, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mFlingGestureMinVelocityPy:F

    cmpl-float v0, p4, v0

    if-ltz v0, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40000000

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    .line 284
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->performShowStatusBarOnFullScreen(Z)V

    goto :goto_7
.end method
