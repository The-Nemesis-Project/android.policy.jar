.class Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea$1;
.super Ljava/lang/Object;
.source "SViewCoverUnlockArea.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;)V
    .registers 2

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 16
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const-wide/high16 v11, 0x4000000000000000L

    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 94
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mIsFirstNoti:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->access$000(Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 145
    :cond_e
    :goto_e
    return v10

    .line 98
    :cond_f
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    .line 99
    .local v2, "touchedEventX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    .line 101
    .local v3, "touchedEventY":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_132

    goto :goto_e

    .line 104
    :pswitch_1f
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mSViewCoverManagerCallback:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SViewCoverManagerCallback;
    invoke-static {v4}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->access$100(Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;)Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SViewCoverManagerCallback;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SViewCoverManagerCallback;->onPagerTouchDowned()V

    .line 105
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mPM:Landroid/os/PowerManager;
    invoke-static {v4}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->access$200(Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;)Landroid/os/PowerManager;

    move-result-object v4

    if-eqz v4, :cond_3d

    .line 106
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mPM:Landroid/os/PowerManager;
    invoke-static {v4}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->access$200(Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;)Landroid/os/PowerManager;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6, v9}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 109
    :cond_3d
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;

    # setter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mStartX:F
    invoke-static {v4, v2}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->access$302(Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;F)F

    .line 110
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;

    # setter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mStartY:F
    invoke-static {v4, v3}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->access$402(Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;F)F

    .line 111
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;

    # setter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mDistance:D
    invoke-static {v4, v7, v8}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->access$502(Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;D)D

    .line 114
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mCircleRight:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->access$600(Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;)Landroid/widget/ImageView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mArrowRight:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->access$700(Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v4, v10, v5, v6}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->updateCircleAndArrow(ZLandroid/view/View;Landroid/view/View;)V

    .line 117
    :pswitch_5d
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mStartX:F
    invoke-static {v4}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->access$300(Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;)F

    move-result v4

    sub-float v4, v2, v4

    float-to-int v0, v4

    .line 118
    .local v0, "diffX":I
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mStartY:F
    invoke-static {v4}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->access$400(Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;)F

    move-result v4

    sub-float v4, v3, v4

    float-to-int v1, v4

    .line 120
    .local v1, "diffY":I
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;

    int-to-double v5, v0

    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    int-to-double v7, v1

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    # setter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mDistance:D
    invoke-static {v4, v5, v6}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->access$502(Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;D)D

    .line 121
    const-string v4, "SViewCoverUnlockArea"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_MOVE mDistance: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mDistance:D
    invoke-static {v6}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->access$500(Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mDistance:D
    invoke-static {v4}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->access$500(Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;)D

    move-result-wide v4

    iget-object v6, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mSecondBorder:D
    invoke-static {v6}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->access$800(Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;)D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_e

    .line 123
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;

    # setter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mIsFirstNoti:Z
    invoke-static {v4, v9}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->access$002(Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;Z)Z

    .line 124
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->handleUnlockShortCutCircle()V

    .line 125
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mCircleRight:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->access$600(Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;)Landroid/widget/ImageView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mArrowRight:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->access$700(Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v4, v9, v5, v6}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->updateCircleAndArrow(ZLandroid/view/View;Landroid/view/View;)V

    goto/16 :goto_e

    .line 130
    .end local v0    # "diffX":I
    .end local v1    # "diffY":I
    :pswitch_ce
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;

    # setter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mDistance:D
    invoke-static {v4, v7, v8}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->access$502(Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;D)D

    .line 131
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mCircleRight:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->access$600(Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;)Landroid/widget/ImageView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mArrowRight:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->access$700(Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v4, v9, v5, v6}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->updateCircleAndArrow(ZLandroid/view/View;Landroid/view/View;)V

    goto/16 :goto_e

    .line 134
    :pswitch_e6
    const-string v4, "SViewCoverUnlockArea"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_UP mDistance: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mDistance:D
    invoke-static {v6}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->access$500(Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mDistance:D
    invoke-static {v4}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->access$500(Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;)D

    move-result-wide v4

    iget-object v6, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mSecondBorder:D
    invoke-static {v6}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->access$800(Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;)D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_11e

    .line 136
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;

    # setter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mIsFirstNoti:Z
    invoke-static {v4, v9}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->access$002(Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;Z)Z

    .line 137
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->handleUnlockShortCutCircle()V

    .line 139
    :cond_11e
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mCircleRight:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->access$600(Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;)Landroid/widget/ImageView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mArrowRight:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->access$700(Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v4, v9, v5, v6}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->updateCircleAndArrow(ZLandroid/view/View;Landroid/view/View;)V

    goto/16 :goto_e

    .line 101
    nop

    :pswitch_data_132
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_e6
        :pswitch_5d
        :pswitch_ce
    .end packed-switch
.end method
