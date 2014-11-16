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


# instance fields
.field public customAction:I

.field public isKnoxCustom:Z

.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mIconResId:I

.field mLayoutId:I

.field private final mMessage:Ljava/lang/CharSequence;

.field private final mMessageResId:I


# direct methods
.method protected constructor <init>(II)V
    .registers 5
    .param p1, "iconResId"    # I
    .param p2, "messageResId"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 2136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2125
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->isKnoxCustom:Z

    .line 2126
    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->customAction:I

    .line 2137
    iput p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    .line 2138
    iput p2, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessageResId:I

    .line 2139
    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 2140
    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 2141
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->init()V

    .line 2142
    return-void
.end method

.method protected constructor <init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "iconResId"    # I
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "message"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 2143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2125
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->isKnoxCustom:Z

    .line 2126
    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->customAction:I

    .line 2144
    iput p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    .line 2145
    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessageResId:I

    .line 2146
    iput-object p3, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 2147
    iput-object p2, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 2148
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->init()V

    .line 2149
    return-void
.end method

.method protected constructor <init>(ILjava/lang/CharSequence;)V
    .registers 4
    .param p1, "iconResId"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 2150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2125
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->isKnoxCustom:Z

    .line 2126
    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->customAction:I

    .line 2151
    iput p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    .line 2152
    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessageResId:I

    .line 2153
    iput-object p2, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 2154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 2155
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->init()V

    .line 2156
    return-void
.end method

.method protected constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V
    .registers 5
    .param p1, "iconImageDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "messageChar"    # Ljava/lang/String;
    .param p3, "action"    # I

    .prologue
    const/4 v0, 0x0

    .line 2127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2125
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->isKnoxCustom:Z

    .line 2126
    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->customAction:I

    .line 2128
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 2129
    iput-object p2, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 2130
    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    .line 2131
    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessageResId:I

    .line 2132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->isKnoxCustom:Z

    .line 2133
    iput p3, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->customAction:I

    .line 2134
    return-void
.end method

.method private init()V
    .registers 2

    .prologue
    .line 2158
    const v0, 0x1090057

    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mLayoutId:I

    .line 2159
    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 2169
    const v3, 0x1090057

    const/4 v4, 0x0

    invoke-virtual {p4, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 2170
    .local v2, "v":Landroid/view/View;
    const v3, 0x1020006

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2171
    .local v0, "icon":Landroid/widget/ImageView;
    const v3, 0x102000b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2172
    .local v1, "messageView":Landroid/widget/TextView;
    const v3, 0x102031f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2173
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3e

    .line 2174
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2175
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2179
    :cond_34
    :goto_34
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    if-eqz v3, :cond_50

    .line 2180
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2185
    :goto_3d
    return-object v2

    .line 2176
    :cond_3e
    iget v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    if-eqz v3, :cond_34

    .line 2177
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_34

    .line 2182
    :cond_50
    iget v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessageResId:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2183
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_3d
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 2161
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress()Z
    .registers 2

    .prologue
    .line 2165
    const/4 v0, 0x0

    return v0
.end method

.method public abstract onPress()V
.end method
