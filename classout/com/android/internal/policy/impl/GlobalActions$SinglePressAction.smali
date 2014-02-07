.class abstract Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Lcom/android/internal/policy/impl/GlobalActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SinglePressAction"
.end annotation


# static fields
.field protected static rebootMode:I

.field protected static final rebootOptions:[Ljava/lang/String;


# instance fields
.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mIconResId:I

.field private final mMessage:Ljava/lang/CharSequence;

.field private final mMessageResId:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Reboot"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Quick Reboot"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Download Mode"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Recovery"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->rebootOptions:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(II)V
    .registers 4
    .param p1, "iconResId"    # I
    .param p2, "messageResId"    # I

    .prologue
    const/4 v0, 0x0

    .line 1588
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1589
    iput p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    .line 1590
    iput p2, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessageResId:I

    .line 1591
    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 1592
    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1593
    return-void
.end method

.method protected constructor <init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "iconResId"    # I
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 1595
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1596
    iput p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    .line 1597
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessageResId:I

    .line 1598
    iput-object p3, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 1599
    iput-object p2, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1600
    return-void
.end method

.method protected constructor <init>(ILjava/lang/CharSequence;)V
    .registers 4
    .param p1, "iconResId"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 1602
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1603
    iput p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    .line 1604
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessageResId:I

    .line 1605
    iput-object p2, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 1606
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1607
    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f880000

    .line 1623
    const/4 v2, 0x0

    .line 1625
    .local v2, "v":Landroid/view/View;
    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$600()Z

    move-result v3

    if-nez v3, :cond_53

    .line 1626
    const v3, 0x1090058

    invoke-virtual {p4, v3, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 1632
    :goto_11
    const v3, 0x1020006

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1633
    .local v0, "icon":Landroid/widget/ImageView;
    const v3, 0x102000b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1634
    .local v1, "messageView":Landroid/widget/TextView;
    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$600()Z

    move-result v3

    if-nez v3, :cond_2f

    .line 1635
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1636
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1638
    :cond_2f
    const v3, 0x1020328

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1639
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_5b

    .line 1640
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1641
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1645
    :cond_49
    :goto_49
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    if-eqz v3, :cond_6d

    .line 1646
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1652
    :goto_52
    return-object v2

    .line 1628
    .end local v0    # "icon":Landroid/widget/ImageView;
    .end local v1    # "messageView":Landroid/widget/TextView;
    :cond_53
    const v3, 0x1090057

    invoke-virtual {p4, v3, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_11

    .line 1642
    .restart local v0    # "icon":Landroid/widget/ImageView;
    .restart local v1    # "messageView":Landroid/widget/TextView;
    :cond_5b
    iget v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    if-eqz v3, :cond_49

    .line 1643
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_49

    .line 1648
    :cond_6d
    iget v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessageResId:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1649
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_52
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 1609
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress()Z
    .registers 2

    .prologue
    .line 1615
    const/4 v0, 0x0

    return v0
.end method

.method public abstract onPress()V
.end method
