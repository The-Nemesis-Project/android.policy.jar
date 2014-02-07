.class Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;
.super Landroid/gesture/GestureOverlayView;
.source "MultiPhoneWindowEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GhostGestureOverlayView"
.end annotation


# instance fields
.field private mGd:Landroid/view/GestureDetector;

.field private mIsDefaultHover:Z

.field final synthetic this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Landroid/content/Context;)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 2921
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    .line 2922
    invoke-direct {p0, p2}, Landroid/gesture/GestureOverlayView;-><init>(Landroid/content/Context;)V

    .line 2918
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;->mIsDefaultHover:Z

    .line 2924
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;->setSkipInvalidate(Z)V

    .line 2925
    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_TITLEBAR_GESTURE_TRIGGER:Z
    invoke-static {p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$3600(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2926
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView$1;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView$1;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V

    invoke-direct {v0, p2, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;->mGd:Landroid/view/GestureDetector;

    .line 2955
    :cond_1e
    return-void
.end method


# virtual methods
.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 17
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2959
    iget-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;
    invoke-static {v12}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getWindowMode()I

    move-result v11

    .line 2960
    .local v11, "windowMode":I
    invoke-static {v11}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isNormalWindow(I)Z

    move-result v12

    if-eqz v12, :cond_15

    .line 2961
    invoke-super/range {p0 .. p1}, Landroid/gesture/GestureOverlayView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v12

    .line 3025
    :goto_14
    return v12

    .line 2964
    :cond_15
    iget-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;
    invoke-static {v12}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$500(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/view/Window;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v12, v12, Landroid/content/res/Configuration;->arrange:I

    and-int/lit16 v3, v12, -0x801

    .line 2966
    .local v3, "currentLaunchMode":I
    and-int/lit8 v12, v11, 0xf

    if-nez v12, :cond_30

    .line 2967
    const/4 v3, 0x4

    .line 2970
    :cond_30
    const/4 v12, 0x4

    if-eq v3, v12, :cond_41

    const/4 v12, 0x1

    if-eq v3, v12, :cond_41

    invoke-static {v11}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isPinup(I)Z

    move-result v12

    if-nez v12, :cond_41

    .line 2973
    invoke-super/range {p0 .. p1}, Landroid/gesture/GestureOverlayView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v12

    goto :goto_14

    .line 2976
    :cond_41
    iget-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;
    invoke-static {v12}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$2200(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 2977
    .local v10, "th":I
    iget-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/sec/multiwindow/impl/BorderFrameLayout;
    invoke-static {v12}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$3100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/sec/multiwindow/impl/BorderFrameLayout;

    move-result-object v12

    invoke-virtual {v12}, Landroid/sec/multiwindow/impl/BorderFrameLayout;->getMeasuredHeight()I

    move-result v0

    .line 2978
    .local v0, "bh":I
    iget-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/sec/multiwindow/impl/BorderFrameLayout;
    invoke-static {v12}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$3100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/sec/multiwindow/impl/BorderFrameLayout;

    move-result-object v12

    invoke-virtual {v12}, Landroid/sec/multiwindow/impl/BorderFrameLayout;->getMeasuredWidth()I

    move-result v2

    .line 2980
    .local v2, "bw":I
    const/4 v5, -0x1

    .line 2982
    .local v5, "hoverIcon":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    const/4 v13, 0x7

    if-eq v12, v13, :cond_6f

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    const/16 v13, 0x9

    if-ne v12, v13, :cond_139

    :cond_6f
    invoke-static {v11}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isMinimized(I)Z

    move-result v12

    if-nez v12, :cond_139

    iget-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    const-string v13, "fixedSize"

    invoke-virtual {v12, v13}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasApplicationStyle(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_139

    iget-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    const-string v13, "fixedSize"

    invoke-virtual {v12, v13}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasActivityStyle(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_139

    .line 2987
    new-instance v6, Landroid/graphics/Rect;

    const/4 v12, 0x0

    const/16 v13, 0x14

    add-int/lit8 v14, v0, -0x14

    invoke-direct {v6, v12, v10, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2988
    .local v6, "leftHover":Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Rect;

    add-int/lit8 v12, v2, -0x14

    add-int/lit8 v13, v0, -0x14

    invoke-direct {v8, v12, v10, v2, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2989
    .local v8, "rightHover":Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/Rect;

    const/4 v12, 0x0

    add-int/lit8 v13, v0, -0x28

    const/16 v14, 0x28

    invoke-direct {v7, v12, v13, v14, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2990
    .local v7, "leftbottomHover":Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Rect;

    add-int/lit8 v12, v2, -0x28

    add-int/lit8 v13, v0, -0x28

    invoke-direct {v9, v12, v13, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2991
    .local v9, "rightbottomHover":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    const/16 v12, 0x14

    add-int/lit8 v13, v0, -0x14

    add-int/lit8 v14, v2, -0x14

    invoke-direct {v1, v12, v13, v14, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2993
    .local v1, "bottomHover":Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    float-to-int v12, v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    float-to-int v13, v13

    invoke-virtual {v6, v12, v13}, Landroid/graphics/Rect;->contains(II)Z

    move-result v12

    if-eqz v12, :cond_da

    .line 2994
    const/4 v5, 0x6

    .line 2995
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;->mIsDefaultHover:Z

    .line 3019
    .end local v1    # "bottomHover":Landroid/graphics/Rect;
    .end local v6    # "leftHover":Landroid/graphics/Rect;
    .end local v7    # "leftbottomHover":Landroid/graphics/Rect;
    .end local v8    # "rightHover":Landroid/graphics/Rect;
    .end local v9    # "rightbottomHover":Landroid/graphics/Rect;
    :cond_ce
    :goto_ce
    if-lez v5, :cond_d4

    .line 3020
    const/4 v12, -0x1

    :try_start_d1
    invoke-static {v5, v12}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_d4
    .catch Landroid/os/RemoteException; {:try_start_d1 .. :try_end_d4} :catch_143

    .line 3025
    :cond_d4
    :goto_d4
    invoke-super/range {p0 .. p1}, Landroid/gesture/GestureOverlayView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v12

    goto/16 :goto_14

    .line 2996
    .restart local v1    # "bottomHover":Landroid/graphics/Rect;
    .restart local v6    # "leftHover":Landroid/graphics/Rect;
    .restart local v7    # "leftbottomHover":Landroid/graphics/Rect;
    .restart local v8    # "rightHover":Landroid/graphics/Rect;
    .restart local v9    # "rightbottomHover":Landroid/graphics/Rect;
    :cond_da
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    float-to-int v12, v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    float-to-int v13, v13

    invoke-virtual {v8, v12, v13}, Landroid/graphics/Rect;->contains(II)Z

    move-result v12

    if-eqz v12, :cond_ef

    .line 2997
    const/4 v5, 0x6

    .line 2998
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;->mIsDefaultHover:Z

    goto :goto_ce

    .line 2999
    :cond_ef
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    float-to-int v12, v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    float-to-int v13, v13

    invoke-virtual {v7, v12, v13}, Landroid/graphics/Rect;->contains(II)Z

    move-result v12

    if-eqz v12, :cond_105

    .line 3000
    const/16 v5, 0x9

    .line 3001
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;->mIsDefaultHover:Z

    goto :goto_ce

    .line 3002
    :cond_105
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    float-to-int v12, v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    float-to-int v13, v13

    invoke-virtual {v9, v12, v13}, Landroid/graphics/Rect;->contains(II)Z

    move-result v12

    if-eqz v12, :cond_11b

    .line 3003
    const/16 v5, 0x8

    .line 3004
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;->mIsDefaultHover:Z

    goto :goto_ce

    .line 3005
    :cond_11b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    float-to-int v12, v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    float-to-int v13, v13

    invoke-virtual {v1, v12, v13}, Landroid/graphics/Rect;->contains(II)Z

    move-result v12

    if-eqz v12, :cond_130

    .line 3006
    const/4 v5, 0x7

    .line 3007
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;->mIsDefaultHover:Z

    goto :goto_ce

    .line 3009
    :cond_130
    iget-boolean v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;->mIsDefaultHover:Z

    if-nez v12, :cond_ce

    .line 3010
    const/4 v5, 0x1

    .line 3011
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;->mIsDefaultHover:Z

    goto :goto_ce

    .line 3014
    .end local v1    # "bottomHover":Landroid/graphics/Rect;
    .end local v6    # "leftHover":Landroid/graphics/Rect;
    .end local v7    # "leftbottomHover":Landroid/graphics/Rect;
    .end local v8    # "rightHover":Landroid/graphics/Rect;
    .end local v9    # "rightbottomHover":Landroid/graphics/Rect;
    :cond_139
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    const/16 v13, 0xa

    if-ne v12, v13, :cond_ce

    .line 3015
    const/4 v5, 0x1

    goto :goto_ce

    .line 3022
    :catch_143
    move-exception v4

    .line 3023
    .local v4, "e":Landroid/os/RemoteException;
    const-string v12, "MultiPhoneWindowEvent"

    const-string v13, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d4
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 3031
    invoke-super {p0, p1}, Landroid/gesture/GestureOverlayView;->onWindowFocusChanged(Z)V

    .line 3033
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowMode()I

    move-result v0

    .line 3034
    .local v0, "windowMode":I
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    # invokes: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasOverlayTitleBar(I)Z
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1500(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;I)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 3035
    if-nez p1, :cond_1c

    .line 3036
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hideTitleBar()V

    .line 3039
    :cond_1c
    return-void
.end method
