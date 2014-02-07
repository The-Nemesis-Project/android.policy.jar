.class Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;
.super Ljava/lang/Object;
.source "SlidingChallengeLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)V
    .registers 2

    .prologue
    .line 1431
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 15
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1435
    const/4 v0, 0x1

    .line 1437
    .local v0, "DEBUG_TOUCH":Z
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mIsFirst:Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$400(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)Z

    move-result v5

    if-nez v5, :cond_19

    .line 1438
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_1a8

    .line 1446
    :goto_10
    :pswitch_10
    const/4 v5, 0x1

    .line 1526
    :goto_11
    return v5

    .line 1441
    :pswitch_12
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    const/4 v6, 0x1

    # setter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mIsFirst:Z
    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$402(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;Z)Z

    goto :goto_10

    .line 1449
    :cond_19
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->isIgnoreTouch:Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$500(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 1450
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2e

    .line 1451
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    const/4 v6, 0x0

    # setter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->isIgnoreTouch:Z
    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$502(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;Z)Z

    .line 1453
    :cond_2e
    const/4 v5, 0x1

    goto :goto_11

    .line 1456
    :cond_30
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    .line 1457
    .local v3, "touchedEventX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    .line 1459
    .local v4, "touchedEventY":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_1b2

    .line 1514
    :cond_3f
    :goto_3f
    :pswitch_3f
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mUnlockEffect:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$1400(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)I

    move-result v5

    packed-switch v5, :pswitch_data_1c4

    .line 1526
    :goto_48
    const/4 v5, 0x1

    goto :goto_11

    .line 1461
    :pswitch_4a
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$600(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    .line 1462
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    # setter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mStartX:F
    invoke-static {v5, v3}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$702(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;F)F

    .line 1463
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    # setter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mStartY:F
    invoke-static {v5, v4}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$802(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;F)F

    .line 1464
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    const-wide/16 v6, 0x0

    # setter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDistance:D
    invoke-static {v5, v6, v7}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$902(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;D)D

    .line 1467
    :pswitch_65
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$1000(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v5

    if-eqz v5, :cond_78

    .line 1468
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$1000(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v5

    const-wide/16 v6, 0x1388

    invoke-interface {v5, v6, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 1471
    :cond_78
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mStartX:F
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$700(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)F

    move-result v5

    sub-float v5, v3, v5

    float-to-int v1, v5

    .line 1472
    .local v1, "diffX":I
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mStartY:F
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$800(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)F

    move-result v5

    sub-float v5, v4, v5

    float-to-int v2, v5

    .line 1474
    .local v2, "diffY":I
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    int-to-double v6, v1

    const-wide/high16 v8, 0x4000000000000000L

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    int-to-double v8, v2

    const-wide/high16 v10, 0x4000000000000000L

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    # setter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDistance:D
    invoke-static {v5, v6, v7}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$902(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;D)D

    .line 1475
    if-eqz v0, :cond_c2

    .line 1476
    const-string v5, "SlidingChallengeLayout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_MOVE mDistance: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDistance:D
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$900(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    :cond_c2
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDistance:D
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$900(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)D

    move-result-wide v5

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mSecondBorder:I
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$1100(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)I

    move-result v7

    int-to-double v7, v7

    cmpl-double v5, v5, v7

    if-ltz v5, :cond_3f

    .line 1479
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    const/4 v6, 0x0

    # setter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mIsFirst:Z
    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$402(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;Z)Z

    .line 1480
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mUnlockView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$1200(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;->playLockSound()V

    .line 1481
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$1000(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v5

    if-eqz v5, :cond_3f

    .line 1482
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$1000(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    goto/16 :goto_3f

    .line 1487
    .end local v1    # "diffX":I
    .end local v2    # "diffY":I
    :pswitch_f6
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    const/4 v6, 0x1

    # setter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->isIgnoreTouch:Z
    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$502(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;Z)Z

    .line 1489
    :pswitch_fc
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    const-wide/16 v6, 0x0

    # setter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDistance:D
    invoke-static {v5, v6, v7}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$902(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;D)D

    .line 1490
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$600(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)Landroid/view/View;

    move-result-object v5

    const/high16 v6, 0x3f800000

    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_3f

    .line 1493
    :pswitch_110
    if-eqz v0, :cond_130

    .line 1494
    const-string v5, "SlidingChallengeLayout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_UP mDistance: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDistance:D
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$900(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    :cond_130
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mFirstBorder:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$1300(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)I

    move-result v5

    int-to-double v5, v5

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDistance:D
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$900(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)D

    move-result-wide v7

    cmpg-double v5, v5, v7

    if-gez v5, :cond_175

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDistance:D
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$900(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)D

    move-result-wide v5

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mSecondBorder:I
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$1100(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)I

    move-result v7

    int-to-double v7, v7

    cmpg-double v5, v5, v7

    if-gez v5, :cond_175

    .line 1497
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    const/4 v6, 0x0

    # setter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mIsFirst:Z
    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$402(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;Z)Z

    .line 1498
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mUnlockView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$1200(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;->playLockSound()V

    .line 1499
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$1000(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v5

    if-eqz v5, :cond_3f

    .line 1500
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$1000(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    goto/16 :goto_3f

    .line 1503
    :cond_175
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->isChallengeShowing()Z

    move-result v5

    if-nez v5, :cond_183

    .line 1504
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->showChallenge(Z)V

    .line 1506
    :cond_183
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$600(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)Landroid/view/View;

    move-result-object v5

    const/high16 v6, 0x3f800000

    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_3f

    .line 1517
    :pswitch_190
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mUnlockView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$1200(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    move-result-object v5

    invoke-interface {v5, p1, p2}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto/16 :goto_48

    .line 1523
    :pswitch_19b
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mUnlockView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$1200(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6, p2}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto/16 :goto_48

    .line 1438
    nop

    :pswitch_data_1a8
    .packed-switch 0x1
        :pswitch_12
        :pswitch_10
        :pswitch_12
    .end packed-switch

    .line 1459
    :pswitch_data_1b2
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_110
        :pswitch_65
        :pswitch_fc
        :pswitch_3f
        :pswitch_3f
        :pswitch_f6
    .end packed-switch

    .line 1514
    :pswitch_data_1c4
    .packed-switch 0x0
        :pswitch_190
        :pswitch_19b
        :pswitch_19b
    .end packed-switch
.end method
