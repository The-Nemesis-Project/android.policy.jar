.class Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->addSwitchToPreviousSizeButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)V
    .registers 2

    .prologue
    .line 3117
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 3119
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mIsLongClick:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$2700(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Z

    move-result v1

    if-nez v1, :cond_c

    move v5, v0

    .line 3161
    :cond_b
    :goto_b
    return v5

    .line 3123
    :cond_c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 3124
    .local v6, "action":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v7, v1

    .line 3125
    .local v7, "rowX":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v8, v1

    .line 3127
    .local v8, "rowY":I
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mIsFirstTouch:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$2800(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Z

    move-result v1

    if-ne v1, v5, :cond_41

    .line 3128
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mXLocationOfSwitchToPreviousSizeButton:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$3000(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I

    move-result v2

    sub-int v2, v7, v2

    # setter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mXOffsetTouch:I
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$2902(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;I)I

    .line 3129
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mYLocationOfSwitchToPreviousSizeButton:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$3200(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I

    move-result v2

    sub-int v2, v8, v2

    # setter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mYOffsetTouch:I
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$3102(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;I)I

    .line 3130
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    # setter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mIsFirstTouch:Z
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$2802(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;Z)Z

    .line 3133
    :cond_41
    const/4 v1, 0x2

    if-ne v6, v1, :cond_97

    .line 3134
    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mSwitchToPreviousSizeButton:Landroid/widget/PopupWindow;
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2500()Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3135
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mScreenWidth:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$3400(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I

    move-result v0

    sub-int/2addr v0, v7

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mXOffsetTouch:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$2900(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I

    move-result v1

    add-int/2addr v0, v1

    # setter for: Lcom/android/internal/policy/impl/PhoneWindow;->mXPosOfSwitchToPreviousSizeButton:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->access$3302(I)I

    .line 3137
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mScreenHeight:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$3600(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I

    move-result v0

    sub-int/2addr v0, v8

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mYOffsetTouch:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$3100(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I

    move-result v1

    add-int/2addr v0, v1

    # setter for: Lcom/android/internal/policy/impl/PhoneWindow;->mYPosOfSwitchToPreviousSizeButton:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->access$3502(I)I

    .line 3139
    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mSwitchToPreviousSizeButton:Landroid/widget/PopupWindow;
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2500()Landroid/widget/PopupWindow;

    move-result-object v0

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mXPosOfSwitchToPreviousSizeButton:I
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindow;->access$3300()I

    move-result v1

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mYPosOfSwitchToPreviousSizeButton:I
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindow;->access$3500()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mSwitchToPreviousSizeButtonWidth:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$3700(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mSwitchToPreviousSizeButtonHeight:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$3800(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I

    move-result v4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    goto/16 :goto_b

    .line 3146
    :cond_97
    if-nez v6, :cond_e2

    .line 3147
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mScreenWidth:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$3400(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I

    move-result v0

    sub-int/2addr v0, v7

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mXOffsetTouch:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$2900(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I

    move-result v1

    add-int/2addr v0, v1

    # setter for: Lcom/android/internal/policy/impl/PhoneWindow;->mXPosOfSwitchToPreviousSizeButton:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->access$3302(I)I

    .line 3149
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mScreenHeight:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$3600(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I

    move-result v0

    sub-int/2addr v0, v8

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mYOffsetTouch:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$3100(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I

    move-result v1

    add-int/2addr v0, v1

    # setter for: Lcom/android/internal/policy/impl/PhoneWindow;->mYPosOfSwitchToPreviousSizeButton:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->access$3502(I)I

    .line 3151
    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mSwitchToPreviousSizeButton:Landroid/widget/PopupWindow;
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2500()Landroid/widget/PopupWindow;

    move-result-object v0

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mXPosOfSwitchToPreviousSizeButton:I
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindow;->access$3300()I

    move-result v1

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mYPosOfSwitchToPreviousSizeButton:I
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindow;->access$3500()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mSwitchToPreviousSizeButtonWidth:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$3700(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mSwitchToPreviousSizeButtonHeight:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$3800(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I

    move-result v4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    goto/16 :goto_b

    .line 3157
    :cond_e2
    if-ne v6, v5, :cond_b

    .line 3158
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    # setter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mIsLongClick:Z
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$2702(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;Z)Z

    move v5, v0

    .line 3159
    goto/16 :goto_b
.end method
