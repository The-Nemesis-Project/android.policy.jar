.class public Lcom/android/internal/policy/impl/sviewcover/SViewCoverShortcuts;
.super Landroid/widget/LinearLayout;
.source "SViewCoverShortcuts.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCameraButton:Landroid/view/View;

.field private mCameraText:Landroid/widget/TextView;

.field private mMemoText:Landroid/widget/TextView;

.field private mQuickNotesButton:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-class v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverShortcuts;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverShortcuts;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverShortcuts;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverShortcuts;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverShortcuts;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 42
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 44
    const v0, 0x10202bf

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverShortcuts;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverShortcuts;->mCameraButton:Landroid/view/View;

    .line 45
    const v0, 0x10202c1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverShortcuts;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverShortcuts;->mQuickNotesButton:Landroid/view/View;

    .line 47
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverShortcuts;->mCameraButton:Landroid/view/View;

    new-instance v1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverShortcuts$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverShortcuts$1;-><init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverShortcuts;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverShortcuts;->mQuickNotesButton:Landroid/view/View;

    new-instance v1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverShortcuts$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverShortcuts$2;-><init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverShortcuts;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    const v0, 0x102044a

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverShortcuts;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverShortcuts;->mCameraText:Landroid/widget/TextView;

    .line 79
    const v0, 0x102044b

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverShortcuts;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverShortcuts;->mMemoText:Landroid/widget/TextView;

    .line 80
    return-void
.end method

.method public setMarquee(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverShortcuts;->mCameraText:Landroid/widget/TextView;

    if-eqz v0, :cond_10

    .line 84
    sget-object v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverShortcuts;->TAG:Ljava/lang/String;

    const-string v1, "camera text marquee"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverShortcuts;->mCameraText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 87
    :cond_10
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverShortcuts;->mMemoText:Landroid/widget/TextView;

    if-eqz v0, :cond_20

    .line 88
    sget-object v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverShortcuts;->TAG:Ljava/lang/String;

    const-string v1, "memo text marquee"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverShortcuts;->mMemoText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 91
    :cond_20
    return-void
.end method
