.class public Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;
.super Landroid/widget/LinearLayout;
.source "SViewCoverPagerNavigation.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/PagedView$PageSwitchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation$1;,
        Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation$PageType;
    }
.end annotation


# static fields
.field private static final NAVIGATION_PADDING_VALUE:D = 3.5

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mCurrentPage:I

.field private mDensity:F

.field private mIndicatorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mPageCount:I

.field private mPager:Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const-string v0, "SViewCoverPagerNavigation"

    sput-object v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, -0x1

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    iput v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;->mCurrentPage:I

    .line 30
    iput v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;->mPageCount:I

    .line 32
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;->mPager:Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;

    .line 34
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;->mIndicatorList:Ljava/util/ArrayList;

    .line 49
    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 50
    .local v1, "windowManager":Landroid/view/WindowManager;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 51
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 52
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;->mDensity:F

    .line 53
    return-void
.end method

.method private getNavigationImage(Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation$PageType;)I
    .registers 5
    .param p1, "page"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation$PageType;

    .prologue
    const v0, 0x1080280

    .line 65
    sget-object v1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation$1;->$SwitchMap$com$android$internal$policy$impl$sviewcover$SViewCoverPagerNavigation$PageType:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation$PageType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_14

    .line 71
    :goto_e
    :pswitch_e
    return v0

    .line 67
    :pswitch_f
    const v0, 0x108027f

    goto :goto_e

    .line 65
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
    .end packed-switch
.end method


# virtual methods
.method public onPageSwitched(Landroid/view/View;I)V
    .registers 3
    .param p1, "newPage"    # Landroid/view/View;
    .param p2, "newPageIndex"    # I

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;->updateLayout()V

    .line 132
    return-void
.end method

.method public onPageSwitching(Landroid/view/View;I)V
    .registers 3
    .param p1, "newPage"    # Landroid/view/View;
    .param p2, "newPageIndex"    # I

    .prologue
    .line 127
    return-void
.end method

.method public setPager(Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;)V
    .registers 4
    .param p1, "pager"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;

    .prologue
    .line 56
    if-nez p1, :cond_a

    .line 57
    sget-object v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;->TAG:Ljava/lang/String;

    const-string v1, "setPager(): received null as argument!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :goto_9
    return-void

    .line 60
    :cond_a
    iput-object p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;->mPager:Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;

    .line 61
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;->mPager:Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;->setPageSwitchListener(Lcom/android/internal/policy/impl/keyguard/PagedView$PageSwitchListener;)V

    goto :goto_9
.end method

.method updateLayout()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 76
    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;->mPager:Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;

    if-nez v3, :cond_d

    .line 77
    sget-object v3, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;->TAG:Ljava/lang/String;

    const-string v4, "updateLayout(): was called when mPager is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :goto_c
    return-void

    .line 80
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1b

    .line 81
    sget-object v3, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;->TAG:Ljava/lang/String;

    const-string v4, "Navigation visibility is no VISIBLE, will not update !"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 85
    :cond_1b
    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;->mPager:Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;->getPageCount()I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;->mPageCount:I

    .line 87
    iget v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;->mPageCount:I

    if-gtz v3, :cond_2f

    .line 88
    sget-object v3, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;->TAG:Ljava/lang/String;

    const-string v4, "updateLayout(): page count is less or equal zero!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 90
    :cond_2f
    iget v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;->mPageCount:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3a

    .line 91
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;->setVisibility(I)V

    goto :goto_c

    .line 93
    :cond_3a
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_43

    .line 94
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;->setVisibility(I)V

    .line 97
    :cond_43
    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;->mPager:Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;->getCurrentPage()I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;->mCurrentPage:I

    .line 99
    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;->mIndicatorList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;->mPageCount:I

    if-ge v3, v4, :cond_7b

    .line 100
    :goto_55
    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;->mIndicatorList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;->mPageCount:I

    if-eq v3, v4, :cond_a6

    .line 101
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 102
    .local v2, "v":Landroid/widget/ImageView;
    iget v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;->mDensity:F

    float-to-double v3, v3

    const-wide/high16 v5, 0x400c000000000000L

    mul-double/2addr v3, v5

    double-to-int v1, v3

    .line 103
    .local v1, "padding":I
    invoke-virtual {v2, v1, v7, v1, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 104
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;->addView(Landroid/view/View;)V

    .line 105
    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;->mIndicatorList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_55

    .line 107
    .end local v1    # "padding":I
    .end local v2    # "v":Landroid/widget/ImageView;
    :cond_7b
    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;->mIndicatorList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;->mPageCount:I

    if-le v3, v4, :cond_a6

    .line 108
    :goto_85
    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;->mIndicatorList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;->mPageCount:I

    if-eq v3, v4, :cond_a6

    .line 109
    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;->mIndicatorList:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 110
    .restart local v2    # "v":Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_a0

    .line 111
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;->removeView(Landroid/view/View;)V

    .line 113
    :cond_a0
    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;->mIndicatorList:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_85

    .line 117
    .end local v2    # "v":Landroid/widget/ImageView;
    :cond_a6
    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;->mIndicatorList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_ac
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 118
    .restart local v2    # "v":Landroid/widget/ImageView;
    sget-object v3, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation$PageType;->normal:Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation$PageType;

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;->getNavigationImage(Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation$PageType;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_ac

    .line 121
    .end local v2    # "v":Landroid/widget/ImageView;
    :cond_c2
    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;->mIndicatorList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;->mCurrentPage:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget-object v4, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation$PageType;->current_normal:Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation$PageType;

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;->getNavigationImage(Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation$PageType;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_c
.end method
