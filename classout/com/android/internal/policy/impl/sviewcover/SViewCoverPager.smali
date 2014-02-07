.class public Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;
.super Lcom/android/internal/policy/impl/keyguard/PagedView;
.source "SViewCoverPager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SViewCoverPager"


# instance fields
.field private mEnableTouch:Z

.field private mPM:Landroid/os/PowerManager;

.field private mSViewCoverManagerCallback:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SViewCoverManagerCallback;

.field private mSnapTo:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;->mSnapTo:I

    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;->mEnableTouch:Z

    .line 55
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;->mPM:Landroid/os/PowerManager;

    .line 56
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/4 v0, -0x1

    .line 92
    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 93
    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 99
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    if-lt v0, p2, :cond_f

    .line 100
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    .line 102
    :cond_f
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 103
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 82
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;->mEnableTouch:Z

    if-nez v0, :cond_9

    const/4 v0, 0x1

    .line 83
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 60
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 62
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;->mEnableTouch:Z

    if-nez v2, :cond_a

    .line 75
    :goto_9
    return v0

    .line 64
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_2e

    move v0, v1

    .line 75
    goto :goto_9

    .line 66
    :pswitch_13
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;->mSViewCoverManagerCallback:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SViewCoverManagerCallback;

    if-eqz v2, :cond_1c

    .line 67
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;->mSViewCoverManagerCallback:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SViewCoverManagerCallback;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SViewCoverManagerCallback;->onPagerTouchDowned()V

    .line 69
    :cond_1c
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 70
    const-string v1, "SViewCoverPager"

    const-string v2, "userActivity called in SViewCoverPager"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 64
    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_13
    .end packed-switch
.end method

.method public onAddView(Landroid/view/View;I)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 174
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 9
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v2, -0x1

    .line 147
    invoke-super/range {p0 .. p5}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onLayout(ZIIII)V

    .line 148
    iget v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;->mSnapTo:I

    if-eq v0, v2, :cond_17

    iget v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;->mSnapTo:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;->getPageCount()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 149
    iget v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;->mSnapTo:I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;->snapToPage(I)V

    .line 150
    iput v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;->mSnapTo:I

    .line 152
    :cond_17
    return-void
.end method

.method protected onMeasure(II)V
    .registers 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 118
    const-string v0, "SViewCoverPager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[widthMeasureSpec, heightMeasureSpec] = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onMeasure(II)V

    .line 121
    return-void
.end method

.method public onRemoveView(Landroid/view/View;Z)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "deletePermanently"    # Z

    .prologue
    .line 166
    return-void
.end method

.method public onRemoveViewAnimationCompleted()V
    .registers 1

    .prologue
    .line 170
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 126
    .local v0, "index":I
    if-gez v0, :cond_e

    .line 127
    const-string v1, "SViewCoverPager"

    const-string v2, "The view was already removed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :goto_d
    return-void

    .line 130
    :cond_e
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    if-ge v0, v1, :cond_22

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_22

    .line 135
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    .line 137
    :cond_22
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->removeView(Landroid/view/View;)V

    goto :goto_d
.end method

.method public scheduleSnapping(I)V
    .registers 2
    .param p1, "page"    # I

    .prologue
    .line 155
    iput p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;->mSnapTo:I

    .line 156
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;->requestLayout()V

    .line 157
    return-void
.end method

.method public scheduleSnapping(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 161
    .local v0, "page":I
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;->scheduleSnapping(I)V

    .line 162
    return-void
.end method

.method public setEnableTouchEvent(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 182
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;->mEnableTouch:Z

    .line 183
    return-void
.end method

.method public setSViewCoverManagerCallback(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SViewCoverManagerCallback;)V
    .registers 2
    .param p1, "sViewCoverManagerCallback"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SViewCoverManagerCallback;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;->mSViewCoverManagerCallback:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SViewCoverManagerCallback;

    .line 178
    return-void
.end method

.method public snapToPage(I)V
    .registers 2
    .param p1, "whichPage"    # I

    .prologue
    .line 142
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(I)V

    .line 143
    return-void
.end method
