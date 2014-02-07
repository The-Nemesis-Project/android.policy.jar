.class Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$SwithToPreviousSizeButton;
.super Landroid/widget/ImageButton;
.source "MultiPhoneWindowEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwithToPreviousSizeButton"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Landroid/content/Context;)V
    .registers 6
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 3056
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$SwithToPreviousSizeButton;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    .line 3057
    const/4 v0, 0x0

    const v1, 0x101043d

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3058
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$SwithToPreviousSizeButton;->setClickable(Z)V

    .line 3059
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$SwithToPreviousSizeButton;->setFocusable(Z)V

    .line 3060
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$SwithToPreviousSizeButton;->setVisibility(I)V

    .line 3061
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$SwithToPreviousSizeButton;->setEnabled(Z)V

    .line 3062
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$SwithToPreviousSizeButton;->setLongClickable(Z)V

    .line 3063
    return-void
.end method


# virtual methods
.method public performClick()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 3066
    invoke-super {p0}, Landroid/widget/ImageButton;->performClick()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3083
    :cond_7
    :goto_7
    return v2

    .line 3069
    :cond_8
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$SwithToPreviousSizeButton;->playSoundEffect(I)V

    .line 3071
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$SwithToPreviousSizeButton;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$SwithToPreviousSizeButton;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_7

    .line 3072
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$SwithToPreviousSizeButton;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowMode()I

    move-result v0

    .line 3073
    .local v0, "windowMode":I
    const v1, 0xffffff

    and-int/2addr v0, v1

    .line 3074
    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    .line 3075
    const v1, -0x800001

    and-int/2addr v0, v1

    .line 3076
    const v1, -0x200001

    and-int/2addr v0, v1

    .line 3078
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$SwithToPreviousSizeButton;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$SwithToPreviousSizeButton;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_7

    .line 3079
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$SwithToPreviousSizeButton;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->setWindowMode(IZ)V

    goto :goto_7
.end method

.method public performLongClick()Z
    .registers 15

    .prologue
    const/16 v13, 0x35

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 3088
    invoke-super {p0}, Landroid/widget/ImageButton;->performLongClick()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 3117
    :goto_a
    return v11

    .line 3092
    :cond_b
    const/4 v8, 0x2

    new-array v5, v8, [I

    .line 3093
    .local v5, "screenPos":[I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 3094
    .local v2, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$SwithToPreviousSizeButton;->getLocationOnScreen([I)V

    .line 3095
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$SwithToPreviousSizeButton;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 3097
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$SwithToPreviousSizeButton;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 3098
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$SwithToPreviousSizeButton;->getWidth()I

    move-result v7

    .line 3099
    .local v7, "width":I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$SwithToPreviousSizeButton;->getHeight()I

    move-result v3

    .line 3100
    .local v3, "height":I
    aget v8, v5, v11

    div-int/lit8 v9, v3, 0x2

    add-int v4, v8, v9

    .line 3101
    .local v4, "midy":I
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v6, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 3103
    .local v6, "screenWidth":I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$SwithToPreviousSizeButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v1, v8, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 3105
    .local v0, "cheatSheet":Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v9, 0x2d0

    if-lt v8, v9, :cond_5f

    .line 3106
    aget v8, v5, v12

    sub-int v8, v6, v8

    div-int/lit8 v9, v7, 0x2

    sub-int/2addr v8, v9

    aget v9, v5, v11

    add-int/2addr v9, v3

    invoke-virtual {v0, v13, v8, v9}, Landroid/widget/Toast;->setGravity(III)V

    .line 3114
    :goto_58
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3115
    invoke-virtual {p0, v12}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$SwithToPreviousSizeButton;->performHapticFeedback(I)Z

    goto :goto_a

    .line 3110
    :cond_5f
    aget v8, v5, v12

    sub-int v8, v6, v8

    div-int/lit8 v9, v7, 0x2

    sub-int/2addr v8, v9

    aget v9, v5, v11

    add-int/2addr v9, v3

    iget v10, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    invoke-virtual {v0, v13, v8, v9}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_58
.end method
