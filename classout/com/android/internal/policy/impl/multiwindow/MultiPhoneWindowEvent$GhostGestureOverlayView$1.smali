.class Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MultiPhoneWindowEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private SWEEP_MIN_DISTANCE:F

.field private SWEEP_MIN_DISTANCE_FROM_SCREEN:F

.field private SWEEP_MIN_VELOCITY:I

.field private density:F

.field final synthetic this$1:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;

.field final synthetic val$this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V
    .registers 5

    .prologue
    .line 2926
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView$1;->this$1:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;

    iput-object p2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView$1;->val$this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 2927
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView$1;->density:F

    .line 2928
    const/high16 v0, 0x41a00000

    iget v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView$1;->density:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView$1;->SWEEP_MIN_DISTANCE:F

    .line 2929
    const/high16 v0, 0x41700000

    iget v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView$1;->density:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView$1;->SWEEP_MIN_DISTANCE_FROM_SCREEN:F

    .line 2930
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView$1;->SWEEP_MIN_VELOCITY:I

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 11
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v3, 0x0

    .line 2935
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 2936
    .local v2, "startX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float v0, v4, v5

    .line 2937
    .local v0, "deltaX":F
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView$1;->this$1:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    cmpg-float v4, v2, v4

    if-gez v4, :cond_39

    move v1, v2

    .line 2938
    .local v1, "distFromEdge":F
    :goto_1d
    invoke-static {v0}, Landroid/util/MathUtils;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView$1;->SWEEP_MIN_DISTANCE:F

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_38

    invoke-static {p3}, Landroid/util/MathUtils;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView$1;->SWEEP_MIN_VELOCITY:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_38

    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView$1;->SWEEP_MIN_DISTANCE_FROM_SCREEN:F

    cmpl-float v4, v1, v4

    if-lez v4, :cond_43

    .line 2951
    :cond_38
    :goto_38
    return v3

    .line 2937
    .end local v1    # "distFromEdge":F
    :cond_39
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView$1;->this$1:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float v1, v4, v2

    goto :goto_1d

    .line 2948
    .restart local v1    # "distFromEdge":F
    :cond_43
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView$1;->this$1:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;

    iget-object v4, v4, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    invoke-virtual {v4, v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->showTitleBar(Z)V

    .line 2951
    const/4 v3, 0x1

    goto :goto_38
.end method
