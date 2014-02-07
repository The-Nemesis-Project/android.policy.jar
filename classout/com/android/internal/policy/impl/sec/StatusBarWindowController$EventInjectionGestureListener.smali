.class final Lcom/android/internal/policy/impl/sec/StatusBarWindowController$EventInjectionGestureListener;
.super Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper$SamsungPolicyOnGestureListener;
.source "StatusBarWindowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/StatusBarWindowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EventInjectionGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/sec/StatusBarWindowController;)V
    .registers 2

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$EventInjectionGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper$SamsungPolicyOnGestureListener;-><init>()V

    .line 144
    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 170
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$EventInjectionGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget v1, v1, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarHeight:I

    mul-int/lit8 v0, v1, 0x2

    .line 173
    .local v0, "controlAllowHeight":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    int-to-float v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_14

    .line 174
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$EventInjectionGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iput-boolean v3, v1, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mReadyInjectionBackKeyEvent:Z

    .line 176
    :cond_14
    return v3
.end method

.method public onFinished(Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$EventInjectionGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mReadyInjectionBackKeyEvent:Z

    .line 219
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 7
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$EventInjectionGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mReadyInjectionBackKeyEvent:Z

    if-eqz v0, :cond_20

    .line 156
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$EventInjectionGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget v1, v1, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mFlingGestureMaxXVelocityPx:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_20

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$EventInjectionGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget v0, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mFlingGestureMinVelocityPy:F

    cmpl-float v0, p4, v0

    if-ltz v0, :cond_20

    .line 158
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$EventInjectionGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    const/4 v1, 0x4

    # invokes: Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->injectionKeyEvent(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->access$000(Lcom/android/internal/policy/impl/sec/StatusBarWindowController;I)V

    .line 161
    :cond_20
    const/4 v0, 0x1

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 12
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 189
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 190
    .local v0, "e1PointerCount":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 191
    .local v1, "e2PointerCount":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    .line 193
    .local v2, "e2RawY":F
    if-eq v0, v5, :cond_12

    if-ne v1, v5, :cond_17

    .line 195
    :cond_12
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$EventInjectionGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mReadyInjectionBackKeyEvent:Z

    .line 198
    :cond_17
    if-ne v1, v5, :cond_52

    .line 199
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$EventInjectionGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget v3, v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mLastControlEventRawY:F

    cmpl-float v3, v3, v6

    if-nez v3, :cond_27

    .line 200
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$EventInjectionGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iput v2, v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mLastControlEventRawY:F

    .line 213
    :cond_25
    :goto_25
    const/4 v3, 0x1

    return v3

    .line 201
    :cond_27
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$EventInjectionGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget v3, v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mLastControlEventRawY:F

    sub-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x41200000

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_25

    .line 202
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$EventInjectionGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget v3, v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mLastControlEventRawY:F

    cmpl-float v3, v3, v2

    if-lez v3, :cond_4a

    .line 203
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$EventInjectionGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    const/16 v4, 0x18

    # invokes: Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->injectionKeyEvent(I)V
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->access$000(Lcom/android/internal/policy/impl/sec/StatusBarWindowController;I)V

    .line 207
    :goto_45
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$EventInjectionGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iput v2, v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mLastControlEventRawY:F

    goto :goto_25

    .line 205
    :cond_4a
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$EventInjectionGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    const/16 v4, 0x19

    # invokes: Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->injectionKeyEvent(I)V
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->access$000(Lcom/android/internal/policy/impl/sec/StatusBarWindowController;I)V

    goto :goto_45

    .line 210
    :cond_52
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$EventInjectionGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iput v6, v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mLastControlEventRawY:F

    goto :goto_25
.end method
