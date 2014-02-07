.class Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;
.super Ljava/lang/Object;
.source "MultiPhoneWindowEvent.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneWindowListener"
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "PhoneWindowListener"


# instance fields
.field private PrevX:I

.field private PrevY:I

.field fullscreen:Landroid/graphics/Point;

.field private longDownX:I

.field private longDownY:I

.field mDoubleTapListener:Landroid/view/View$OnTouchListener;

.field private mIsTouchCanceledByHidingSip:Z

.field private rawX:I

.field private rawY:I

.field final synthetic this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1849
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1838
    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->mDoubleTapListener:Landroid/view/View$OnTouchListener;

    .line 1839
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->fullscreen:Landroid/graphics/Point;

    .line 1841
    iput v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->longDownX:I

    .line 1842
    iput v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->longDownY:I

    .line 1843
    iput v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->PrevX:I

    .line 1844
    iput v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->PrevY:I

    .line 1845
    iput v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->rawX:I

    .line 1846
    iput v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->rawY:I

    .line 1847
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->mIsTouchCanceledByHidingSip:Z

    .line 1850
    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->mDoubleTapListener:Landroid/view/View$OnTouchListener;

    .line 1851
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$DoubleTapPinupListener;)V
    .registers 5
    .param p2, "listener"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$DoubleTapPinupListener;

    .prologue
    const/4 v1, 0x0

    .line 1853
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1838
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->mDoubleTapListener:Landroid/view/View$OnTouchListener;

    .line 1839
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->fullscreen:Landroid/graphics/Point;

    .line 1841
    iput v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->longDownX:I

    .line 1842
    iput v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->longDownY:I

    .line 1843
    iput v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->PrevX:I

    .line 1844
    iput v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->PrevY:I

    .line 1845
    iput v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->rawX:I

    .line 1846
    iput v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->rawY:I

    .line 1847
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->mIsTouchCanceledByHidingSip:Z

    .line 1854
    iput-object p2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->mDoubleTapListener:Landroid/view/View$OnTouchListener;

    .line 1855
    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v4, 0xa

    const/16 v3, 0x9

    .line 2064
    const/4 v1, -0x1

    .line 2066
    .local v1, "hoverIcon":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_4a

    .line 2080
    :pswitch_c
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$2200(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/view/View;

    move-result-object v2

    if-ne p1, v2, :cond_1b

    .line 2081
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_38

    .line 2082
    const/4 v1, 0x5

    .line 2090
    :cond_1b
    :goto_1b
    if-lez v1, :cond_21

    const/4 v2, -0x1

    :try_start_1e
    invoke-static {v1, v2}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_21} :catch_40

    .line 2094
    :cond_21
    :goto_21
    const/4 v2, 0x0

    return v2

    .line 2072
    :pswitch_23
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_30

    .line 2073
    const/16 v1, 0xa

    .line 2074
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/View;->setHoverPopupType(I)V

    goto :goto_1b

    .line 2075
    :cond_30
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_1b

    .line 2076
    const/4 v1, 0x1

    goto :goto_1b

    .line 2083
    :cond_38
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_1b

    .line 2084
    const/4 v1, 0x1

    goto :goto_1b

    .line 2091
    :catch_40
    move-exception v0

    .line 2092
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "PhoneWindowListener"

    const-string v3, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 2066
    nop

    :pswitch_data_4a
    .packed-switch 0x1020406
        :pswitch_23
        :pswitch_c
        :pswitch_c
        :pswitch_23
        :pswitch_c
        :pswitch_23
        :pswitch_c
        :pswitch_23
        :pswitch_c
        :pswitch_23
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 1859
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowMode()I

    move-result v1

    .line 1860
    .local v1, "windowMode":I
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$500(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->arrange:I

    and-int/lit16 v0, v3, -0x801

    .line 1861
    .local v0, "currentLaunchMode":I
    and-int/lit8 v3, v1, 0xf

    if-nez v3, :cond_26

    .line 1862
    const/4 v0, 0x4

    .line 1865
    :cond_26
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isMinimized(I)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 1878
    :cond_2c
    :goto_2c
    return v2

    .line 1869
    :cond_2d
    const/4 v3, 0x4

    if-eq v0, v3, :cond_2c

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2c

    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isPinup(I)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 1873
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasGuideLayout:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1200(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z

    move-result v3

    if-nez v3, :cond_2c

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1300(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-result-object v3

    if-nez v3, :cond_2c

    .line 1874
    const-string v2, "PhoneWindowListener"

    const-string v3, "Create GhostView by onLongClick"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->longDownX:I

    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->longDownY:I

    # invokes: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->createGhostView(II)Z
    invoke-static {v2, v3, v4}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1400(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;II)Z

    move-result v2

    goto :goto_2c
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 28
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getWindowMode()I

    move-result v19

    .line 1884
    .local v19, "windowMode":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$500(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/view/Window;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/res/Configuration;->arrange:I

    move/from16 v20, v0

    move/from16 v0, v20

    and-int/lit16 v4, v0, -0x801

    .line 1885
    .local v4, "currentLaunchMode":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$800(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x105010a

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    move/from16 v0, v20

    float-to-int v10, v0

    .line 1886
    .local v10, "movingMargin":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->fullscreen:Landroid/graphics/Point;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1888
    and-int/lit8 v20, v19, 0xf

    if-nez v20, :cond_66

    .line 1889
    const/4 v4, 0x4

    .line 1892
    :cond_66
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    # invokes: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasOverlayTitleBar(I)Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1500(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;I)Z

    move-result v20

    if-eqz v20, :cond_7f

    .line 1893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->requestHideTitleBar()V

    .line 1896
    :cond_7f
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 1898
    .local v3, "action":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->mDoubleTapListener:Landroid/view/View$OnTouchListener;

    move-object/from16 v20, v0

    if-eqz v20, :cond_ac

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->mDoubleTapListener:Landroid/view/View$OnTouchListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v20

    if-eqz v20, :cond_ac

    .line 1899
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isMinimized(I)Z

    move-result v20

    if-eqz v20, :cond_a9

    const/16 v20, 0x1

    move/from16 v0, v20

    if-eq v3, v0, :cond_ac

    .line 1900
    :cond_a9
    const/16 v20, 0x1

    .line 2059
    :goto_ab
    return v20

    .line 1904
    :cond_ac
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isNormalWindow(I)Z

    move-result v20

    if-eqz v20, :cond_b5

    .line 1905
    const/16 v20, 0x0

    goto :goto_ab

    .line 1908
    :cond_b5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsTouchable:Z
    invoke-static/range {v20 .. v20}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1600(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z

    move-result v20

    if-eqz v20, :cond_d9

    .line 1909
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    # setter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsTouchable:Z
    invoke-static/range {v20 .. v21}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1602(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Z)Z

    .line 1910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    # setter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOnTouchedView:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1702(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Landroid/view/View;)Landroid/view/View;

    .line 1913
    :cond_d9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOnTouchedView:Landroid/view/View;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1700(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_ec

    .line 1914
    const/16 v20, 0x0

    goto :goto_ab

    .line 1917
    :cond_ec
    packed-switch v3, :pswitch_data_5e8

    .line 2051
    :cond_ef
    :goto_ef
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_MINIMIZE_MOVING_ANIMATION:Z
    invoke-static/range {v20 .. v20}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$2700(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z

    move-result v20

    if-eqz v20, :cond_13a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getWindowMode()I

    move-result v20

    invoke-static/range {v20 .. v20}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isMinimized(I)Z

    move-result v20

    if-eqz v20, :cond_13a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mwm:Landroid/sec/multiwindow/impl/MultiWindowManager;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$600(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/sec/multiwindow/impl/MultiWindowManager;

    move-result-object v20

    if-eqz v20, :cond_13a

    .line 2052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mwm:Landroid/sec/multiwindow/impl/MultiWindowManager;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$600(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/sec/multiwindow/impl/MultiWindowManager;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowServiceCallback:Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback$Stub;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/sec/multiwindow/impl/MultiWindowManager;->dispatchMinimizeEvent(Landroid/os/IBinder;Landroid/view/MotionEvent;)V

    .line 2055
    :cond_13a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasGuideLayout:Z
    invoke-static/range {v20 .. v20}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1200(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z

    move-result v20

    if-eqz v20, :cond_5e4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1300(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-result-object v20

    if-eqz v20, :cond_5e4

    .line 2056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1300(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v20

    goto/16 :goto_ab

    .line 1919
    :pswitch_166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    # setter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasGuideLayout:Z
    invoke-static/range {v20 .. v21}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1202(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Z)Z

    .line 1920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    # setter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;
    invoke-static/range {v20 .. v21}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1302(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    .line 1921
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->longDownX:I

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->PrevX:I

    .line 1922
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->longDownY:I

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->PrevY:I

    .line 1923
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->rawX:I

    .line 1924
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->rawY:I

    .line 1926
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->mIsTouchCanceledByHidingSip:Z

    .line 1927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v20, v0

    # invokes: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->forceHideInputMethod()Z
    invoke-static/range {v20 .. v20}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1800(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z

    move-result v20

    if-eqz v20, :cond_1e4

    .line 1928
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->mIsTouchCanceledByHidingSip:Z

    .line 1929
    const/16 v20, 0x1

    goto/16 :goto_ab

    .line 1931
    :cond_1e4
    const/16 v20, 0x4

    move/from16 v0, v20

    if-eq v4, v0, :cond_20e

    const/16 v20, 0x1

    move/from16 v0, v20

    if-eq v4, v0, :cond_20e

    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isPinup(I)Z

    move-result v20

    if-nez v20, :cond_20e

    .line 1934
    new-instance v6, Landroid/content/Intent;

    const-string v20, "com.sec.android.multiwindow.TITLEBAR_DRAG_START"

    move-object/from16 v0, v20

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1935
    .local v6, "intentForTitleBar":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$800(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1937
    .end local v6    # "intentForTitleBar":Landroid/content/Intent;
    :cond_20e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowIconic:Landroid/widget/ImageView;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$400(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/widget/ImageView;

    move-result-object v20

    new-instance v21, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v22, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$800(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    # invokes: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->getMinimizedBitmap(Z)Landroid/graphics/Bitmap;
    invoke-static/range {v23 .. v24}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1900(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Z)Landroid/graphics/Bitmap;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_ef

    .line 1941
    :pswitch_23c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->mIsTouchCanceledByHidingSip:Z

    move/from16 v20, v0

    if-eqz v20, :cond_248

    .line 1942
    const/16 v20, 0x1

    goto/16 :goto_ab

    .line 1945
    :cond_248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v20, v0

    # invokes: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->forceHideInputMethod()Z
    invoke-static/range {v20 .. v20}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1800(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z

    move-result v20

    if-eqz v20, :cond_258

    .line 1946
    const/16 v20, 0x1

    goto/16 :goto_ab

    .line 1949
    :cond_258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOnTouchedView:Landroid/view/View;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1700(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_26c

    .line 1950
    const/16 v20, 0x1

    goto/16 :goto_ab

    .line 1952
    :cond_26c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    # setter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsTouchable:Z
    invoke-static/range {v20 .. v21}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1602(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Z)Z

    .line 1954
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v20

    move/from16 v0, v20

    float-to-int v11, v0

    .line 1955
    .local v11, "newX":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v20

    move/from16 v0, v20

    float-to-int v12, v0

    .line 1956
    .local v12, "newY":I
    const/16 v16, 0x0

    .line 1957
    .local v16, "tx":I
    const/16 v17, 0x0

    .line 1959
    .local v17, "ty":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->rawX:I

    move/from16 v20, v0

    sub-int v8, v11, v20

    .line 1960
    .local v8, "moveX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->rawY:I

    move/from16 v20, v0

    sub-int v9, v12, v20

    .line 1962
    .local v9, "moveY":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->PrevX:I

    move/from16 v20, v0

    sub-int v20, v11, v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/util/MathUtils;->abs(F)F

    move-result v20

    const/high16 v21, 0x40000000

    cmpl-float v20, v20, v21

    if-gtz v20, :cond_2c7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->PrevY:I

    move/from16 v20, v0

    sub-int v20, v12, v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/util/MathUtils;->abs(F)F

    move-result v20

    const/high16 v21, 0x40000000

    cmpl-float v20, v20, v21

    if-lez v20, :cond_2df

    .line 1964
    :cond_2c7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->longDownX:I

    move/from16 v20, v0

    sub-int v16, v11, v20

    .line 1965
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->longDownY:I

    move/from16 v20, v0

    sub-int v17, v12, v20

    .line 1966
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->PrevX:I

    .line 1967
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->PrevY:I

    .line 1970
    :cond_2df
    if-nez v16, :cond_2e7

    if-nez v17, :cond_2e7

    .line 1971
    const/16 v20, 0x1

    goto/16 :goto_ab

    .line 1974
    :cond_2e7
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isMinimized(I)Z

    move-result v20

    if-eqz v20, :cond_40d

    .line 1975
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->rawX:I

    move/from16 v20, v0

    sub-int v20, v20, v11

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/util/MathUtils;->abs(F)F

    move-result v20

    int-to-float v0, v10

    move/from16 v21, v0

    cmpg-float v20, v20, v21

    if-gez v20, :cond_321

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->rawY:I

    move/from16 v20, v0

    sub-int v20, v20, v12

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/util/MathUtils;->abs(F)F

    move-result v20

    int-to-float v0, v10

    move/from16 v21, v0

    cmpg-float v20, v20, v21

    if-gez v20, :cond_321

    .line 1977
    const/16 v20, 0x1

    goto/16 :goto_ab

    .line 1979
    :cond_321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getWindowInfo()Landroid/os/Bundle;

    move-result-object v18

    .line 1980
    .local v18, "winInfo":Landroid/os/Bundle;
    const-string v20, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    .line 1981
    .local v7, "lastSize":Landroid/graphics/Rect;
    if-eqz v7, :cond_40d

    .line 1982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowMinimizedWidth:I
    invoke-static/range {v20 .. v20}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$2000(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v13, v11, v20

    .line 1983
    .local v13, "posX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowMinimizedWidth:I
    invoke-static/range {v20 .. v20}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$2000(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v14, v12, v20

    .line 1984
    .local v14, "posY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowMinimizedWidth:I
    invoke-static/range {v20 .. v20}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$2000(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    if-ge v11, v0, :cond_36a

    .line 1985
    const/4 v13, 0x0

    .line 1987
    :cond_36a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->fullscreen:Landroid/graphics/Point;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v21, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowMinimizedWidth:I
    invoke-static/range {v21 .. v21}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$2000(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    sub-int v20, v20, v21

    move/from16 v0, v20

    if-le v11, v0, :cond_3a0

    .line 1988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->fullscreen:Landroid/graphics/Point;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v21, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowMinimizedWidth:I
    invoke-static/range {v21 .. v21}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$2000(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I

    move-result v21

    sub-int v13, v20, v21

    .line 1990
    :cond_3a0
    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->statusBarHeight:I
    invoke-static {}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$2100()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v21, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowMinimizedWidth:I
    invoke-static/range {v21 .. v21}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$2000(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    add-int v20, v20, v21

    move/from16 v0, v20

    if-ge v12, v0, :cond_3ba

    .line 1991
    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->statusBarHeight:I
    invoke-static {}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$2100()I

    move-result v14

    .line 1993
    :cond_3ba
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->fullscreen:Landroid/graphics/Point;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v21, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowMinimizedWidth:I
    invoke-static/range {v21 .. v21}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$2000(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    sub-int v20, v20, v21

    move/from16 v0, v20

    if-le v12, v0, :cond_3f0

    .line 1994
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->fullscreen:Landroid/graphics/Point;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v21, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowMinimizedWidth:I
    invoke-static/range {v21 .. v21}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$2000(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I

    move-result v21

    sub-int v14, v20, v21

    .line 1997
    :cond_3f0
    invoke-virtual {v7, v13, v14}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1998
    const-string v20, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/app/Activity;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setWindowInfo(Landroid/os/Bundle;)V

    .line 2003
    .end local v7    # "lastSize":Landroid/graphics/Rect;
    .end local v13    # "posX":I
    .end local v14    # "posY":I
    .end local v18    # "winInfo":Landroid/os/Bundle;
    :cond_40d
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isMinimized(I)Z

    move-result v20

    if-nez v20, :cond_ef

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasGuideLayout:Z
    invoke-static/range {v20 .. v20}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1200(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z

    move-result v20

    if-nez v20, :cond_ef

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1300(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-result-object v20

    if-nez v20, :cond_ef

    .line 2004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$2200(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_453

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMoveWindowView:Landroid/view/View;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$2300(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_ef

    :cond_453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOnTouchedView:Landroid/view/View;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1700(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_ef

    .line 2005
    const-string v20, "PhoneWindowListener"

    const-string v21, "Create GhostView by ACTION_MOVE"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->longDownX:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->longDownY:I

    move/from16 v22, v0

    # invokes: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->createGhostView(II)Z
    invoke-static/range {v20 .. v22}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1400(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;II)Z

    move-result v20

    goto/16 :goto_ab

    .line 2013
    .end local v8    # "moveX":I
    .end local v9    # "moveY":I
    .end local v11    # "newX":I
    .end local v12    # "newY":I
    .end local v16    # "tx":I
    .end local v17    # "ty":I
    :pswitch_486
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->mIsTouchCanceledByHidingSip:Z

    move/from16 v20, v0

    if-eqz v20, :cond_492

    .line 2014
    const/16 v20, 0x1

    goto/16 :goto_ab

    .line 2017
    :cond_492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowIconic:Landroid/widget/ImageView;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$400(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/widget/ImageView;

    move-result-object v20

    new-instance v21, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v22, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$800(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    # invokes: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->getMinimizedBitmap(Z)Landroid/graphics/Bitmap;
    invoke-static/range {v23 .. v24}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1900(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Z)Landroid/graphics/Bitmap;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2018
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isMinimized(I)Z

    move-result v20

    if-eqz v20, :cond_4db

    .line 2019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$500(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/view/Window;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 2020
    .local v5, "decor":Landroid/view/ViewGroup;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2022
    .end local v5    # "decor":Landroid/view/ViewGroup;
    :cond_4db
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isCascadeWindow(I)Z

    move-result v20

    if-eqz v20, :cond_5c4

    .line 2023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getWindowInfo()Landroid/os/Bundle;

    move-result-object v18

    .line 2024
    .restart local v18    # "winInfo":Landroid/os/Bundle;
    if-eqz v18, :cond_547

    .line 2025
    const-string v20, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    .line 2026
    .restart local v7    # "lastSize":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/app/Activity;

    move-result-object v20

    if-eqz v20, :cond_547

    if-eqz v7, :cond_547

    .line 2027
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2028
    .local v15, "reviseSize":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v21, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaxSize:Landroid/graphics/Point;
    invoke-static/range {v21 .. v21}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$2400(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/graphics/Point;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    # invokes: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->reviseWindowPosition(Landroid/graphics/Rect;Landroid/graphics/Point;)V
    invoke-static {v0, v15, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$2500(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Landroid/graphics/Rect;Landroid/graphics/Point;)V

    .line 2030
    invoke-virtual {v7, v15}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_547

    .line 2031
    const-string v20, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2032
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/app/Activity;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setWindowInfo(Landroid/os/Bundle;)V

    .line 2040
    .end local v7    # "lastSize":Landroid/graphics/Rect;
    .end local v15    # "reviseSize":Landroid/graphics/Rect;
    .end local v18    # "winInfo":Landroid/os/Bundle;
    :cond_547
    :goto_547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    # setter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsTouchable:Z
    invoke-static/range {v20 .. v21}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1602(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Z)Z

    .line 2041
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    # setter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOnTouchedView:Landroid/view/View;
    invoke-static/range {v20 .. v21}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1702(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Landroid/view/View;)Landroid/view/View;

    .line 2043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_TITLE_BAR_DOUBLE_TAPPING:Z
    invoke-static/range {v20 .. v20}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$2600(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z

    move-result v20

    if-nez v20, :cond_ef

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->rawX:I

    move/from16 v20, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/util/MathUtils;->abs(F)F

    move-result v20

    int-to-float v0, v10

    move/from16 v21, v0

    cmpg-float v20, v20, v21

    if-gez v20, :cond_ef

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->rawY:I

    move/from16 v20, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/util/MathUtils;->abs(F)F

    move-result v20

    int-to-float v0, v10

    move/from16 v21, v0

    cmpg-float v20, v20, v21

    if-gez v20, :cond_ef

    .line 2046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v21, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;
    invoke-static/range {v21 .. v21}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/app/Activity;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/Activity;->getWindowMode()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->multiwindowWithAni(I)V

    goto/16 :goto_ef

    .line 2036
    :cond_5c4
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isMinimized(I)Z

    move-result v20

    if-nez v20, :cond_547

    .line 2037
    new-instance v6, Landroid/content/Intent;

    const-string v20, "com.sec.android.multiwindow.TITLEBAR_DRAG_STOP"

    move-object/from16 v0, v20

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2038
    .restart local v6    # "intentForTitleBar":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$800(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_547

    .line 2059
    .end local v6    # "intentForTitleBar":Landroid/content/Intent;
    :cond_5e4
    const/16 v20, 0x0

    goto/16 :goto_ab

    .line 1917
    :pswitch_data_5e8
    .packed-switch 0x0
        :pswitch_166
        :pswitch_486
        :pswitch_23c
        :pswitch_486
    .end packed-switch
.end method
