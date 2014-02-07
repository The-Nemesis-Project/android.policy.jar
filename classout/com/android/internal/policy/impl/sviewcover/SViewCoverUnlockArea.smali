.class public Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;
.super Landroid/widget/LinearLayout;
.source "SViewCoverUnlockArea.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "SViewCoverUnlockArea"


# instance fields
.field private final MAKE_TARGET_DURATION:I

.field private mArrowLeft:Landroid/widget/ImageView;

.field private mArrowRight:Landroid/widget/ImageView;

.field private mCircleLeft:Landroid/widget/ImageView;

.field private mCircleRight:Landroid/widget/ImageView;

.field private mDistance:D

.field private mIsFirstNoti:Z

.field private mIsFirstShortCut:Z

.field private mIsShowingNoti:Z

.field private mNotiButton:Landroid/widget/ImageView;

.field private mNotiContainer:Landroid/widget/RelativeLayout;

.field private mPM:Landroid/os/PowerManager;

.field private mSViewCoverManagerCallback:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SViewCoverManagerCallback;

.field private mSViewCoverPagerNavigation:Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;

.field private mSViewPager:Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;

.field private mSecondBorder:D

.field private mShortCutButton:Landroid/widget/ImageView;

.field private mStartX:F

.field private mStartY:F

.field private mUnlockLayout:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x1

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mIsFirstNoti:Z

    .line 53
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mIsFirstShortCut:Z

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mIsShowingNoti:Z

    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mDistance:D

    .line 60
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->MAKE_TARGET_DURATION:I

    .line 75
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mPM:Landroid/os/PowerManager;

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mSecondBorder:D

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mIsFirstNoti:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mIsFirstNoti:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;)Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SViewCoverManagerCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mSViewCoverManagerCallback:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SViewCoverManagerCallback;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mCircleLeft:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mArrowLeft:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;)Landroid/os/PowerManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mPM:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;

    .prologue
    .line 37
    iget v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mStartX:F

    return v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;
    .param p1, "x1"    # F

    .prologue
    .line 37
    iput p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mStartX:F

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;

    .prologue
    .line 37
    iget v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mStartY:F

    return v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;
    .param p1, "x1"    # F

    .prologue
    .line 37
    iput p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mStartY:F

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;)D
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mDistance:D

    return-wide v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;D)D
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;
    .param p1, "x1"    # D

    .prologue
    .line 37
    iput-wide p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mDistance:D

    return-wide p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mCircleRight:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mArrowRight:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;)D
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mSecondBorder:D

    return-wide v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mIsFirstShortCut:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mIsFirstShortCut:Z

    return p1
.end method


# virtual methods
.method public handleHide()V
    .registers 3

    .prologue
    .line 287
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mSViewCoverPagerNavigation:Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mSViewCoverPagerNavigation:Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;->updateLayout()V

    .line 290
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mSViewPager:Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;->setEnableTouchEvent(Z)V

    .line 291
    return-void
.end method

.method public handleHideIconsOnly()V
    .registers 3

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mUnlockLayout:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 270
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mUnlockLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 271
    :cond_a
    return-void
.end method

.method public handleShow()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 279
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mSViewCoverPagerNavigation:Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;->setVisibility(I)V

    .line 281
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mIsFirstNoti:Z

    .line 282
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mIsFirstShortCut:Z

    .line 283
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mSViewPager:Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;->setEnableTouchEvent(Z)V

    .line 284
    return-void
.end method

.method public handleShowIconsOnly()V
    .registers 3

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mUnlockLayout:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 275
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mUnlockLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 276
    :cond_a
    return-void
.end method

.method protected handleUnlockNotiCircle()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 210
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mPM:Landroid/os/PowerManager;

    if-eqz v0, :cond_e

    .line 211
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 213
    :cond_e
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mSViewCoverPagerNavigation:Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mSViewCoverPagerNavigation:Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;->updateLayout()V

    .line 217
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mSViewPager:Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;

    if-eqz v0, :cond_2c

    .line 218
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mSViewPager:Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;->snapToPage(I)V

    .line 219
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mSViewPager:Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;->setEnableTouchEvent(Z)V

    .line 222
    :cond_2c
    return-void
.end method

.method protected handleUnlockShortCutCircle()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 225
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mPM:Landroid/os/PowerManager;

    if-eqz v0, :cond_f

    .line 226
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 228
    :cond_f
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mSViewCoverPagerNavigation:Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mSViewCoverPagerNavigation:Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;->updateLayout()V

    .line 232
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mSViewPager:Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;

    if-eqz v0, :cond_5a

    .line 233
    const-string v0, "SViewCoverUnlockArea"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleUnlockNotiCircle( getPageCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mSViewPager:Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;->getPageCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mSViewPager:Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;->getPageCount()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_5b

    .line 235
    const-string v0, "SViewCoverUnlockArea"

    const-string v1, "handleUnlockNotiCircle( snapToPage to 1 "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mSViewPager:Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;->snapToPage(I)V

    .line 241
    :goto_55
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mSViewPager:Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;->setEnableTouchEvent(Z)V

    .line 243
    :cond_5a
    return-void

    .line 238
    :cond_5b
    const-string v0, "SViewCoverUnlockArea"

    const-string v1, "handleUnlockNotiCircle( snapToPage to 2 "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mSViewPager:Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;->snapToPage(I)V

    goto :goto_55
.end method

.method public hideNotiPageButton()V
    .registers 3

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mNotiContainer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 265
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mIsShowingNoti:Z

    .line 266
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 82
    const v0, 0x10202ce

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mUnlockLayout:Landroid/view/View;

    .line 83
    const v0, 0x102044e

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mNotiContainer:Landroid/widget/RelativeLayout;

    .line 84
    const v0, 0x102044f

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mCircleLeft:Landroid/widget/ImageView;

    .line 85
    const v0, 0x10202cd

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mCircleRight:Landroid/widget/ImageView;

    .line 86
    const v0, 0x1020453

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mArrowRight:Landroid/widget/ImageView;

    .line 87
    const v0, 0x1020451

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mArrowLeft:Landroid/widget/ImageView;

    .line 88
    const v0, 0x1020452

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mShortCutButton:Landroid/widget/ImageView;

    .line 89
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mShortCutButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea$1;-><init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 149
    const v0, 0x1020450

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mNotiButton:Landroid/widget/ImageView;

    .line 150
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mNotiButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea$2;-><init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 207
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 247
    const/4 v0, 0x1

    return v0
.end method

.method public setPagerNavigation(Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;)V
    .registers 2
    .param p1, "sViewCoverPagerNavigation"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mSViewCoverPagerNavigation:Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;

    .line 252
    return-void
.end method

.method public setSViewCoverManagerCallback(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SViewCoverManagerCallback;)V
    .registers 2
    .param p1, "sViewCoverManagerCallback"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SViewCoverManagerCallback;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mSViewCoverManagerCallback:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SViewCoverManagerCallback;

    .line 321
    return-void
.end method

.method public setSViewPager(Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;)V
    .registers 2
    .param p1, "sViewCoverPager"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mSViewPager:Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;

    .line 256
    return-void
.end method

.method public showNotiPageButton()V
    .registers 3

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mNotiContainer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mIsShowingNoti:Z

    .line 261
    return-void
.end method

.method public updateCircleAndArrow(ZLandroid/view/View;Landroid/view/View;)V
    .registers 16
    .param p1, "isActive"    # Z
    .param p2, "circle"    # Landroid/view/View;
    .param p3, "arrow"    # Landroid/view/View;

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x1

    const/4 v9, 0x0

    const v1, 0x3e4ccccd

    const/high16 v2, 0x3f800000

    .line 294
    if-eqz p1, :cond_4e

    .line 295
    new-instance v8, Landroid/view/animation/AnimationSet;

    invoke-direct {v8, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 297
    .local v8, "makeTargetAniSet":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v5, v3

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v6, v3

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 299
    .local v0, "scaleAni":Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 301
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    invoke-direct {v7, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 302
    .local v7, "alphaAni":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v8, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 304
    const-wide/16 v1, 0x1f4

    invoke-virtual {v8, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 305
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->mContext:Landroid/content/Context;

    const v2, 0x10a0006

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 307
    invoke-virtual {v8, v10}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 309
    invoke-virtual {p2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 310
    invoke-virtual {p2, v8}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 311
    invoke-virtual {p3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 317
    .end local v0    # "scaleAni":Landroid/view/animation/ScaleAnimation;
    .end local v7    # "alphaAni":Landroid/view/animation/AlphaAnimation;
    .end local v8    # "makeTargetAniSet":Landroid/view/animation/AnimationSet;
    :goto_4d
    return-void

    .line 313
    :cond_4e
    invoke-virtual {p2}, Landroid/view/View;->clearAnimation()V

    .line 314
    invoke-virtual {p2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 315
    invoke-virtual {p3, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4d
.end method
