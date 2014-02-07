.class public Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;
.super Landroid/view/View;
.source "SViewCoverColorPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView$OnSelectCustomColorListener;,
        Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView$OnColorChangedListener;,
        Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView$OnFocusChangedListener;
    }
.end annotation


# static fields
.field public static final COLORS:[I

.field static final COVER_BACKGROUND_COLOR_1:I

.field static final COVER_BACKGROUND_COLOR_10:I

.field static final COVER_BACKGROUND_COLOR_2:I

.field static final COVER_BACKGROUND_COLOR_3:I

.field static final COVER_BACKGROUND_COLOR_4:I

.field static final COVER_BACKGROUND_COLOR_5:I

.field static final COVER_BACKGROUND_COLOR_6:I

.field static final COVER_BACKGROUND_COLOR_7:I

.field static final COVER_BACKGROUND_COLOR_8:I

.field static final COVER_BACKGROUND_COLOR_9:I

.field static final COVER_BACKGROUND_COLOR_DEFAULT:I

.field private static final ID_OF_TRANSPARENT_VIEW:I = 0xf

.field static final PICKED_COLOR:Ljava/lang/String; = "com.samsung.cover.COLOR_PICKER"

.field public static final TAG:Ljava/lang/String; = "SpLitColorPickerView"


# instance fields
.field private COLOR_HEIGHT:I

.field private COLOR_PICKER_HEIGHT:I

.field private COLOR_PICKER_WIDTH:I

.field private COLOR_SHADOW_HEIGHT:I

.field private COLOR_SHADOW_WIDTH:I

.field private COLOR_WIDTH:I

.field private GAP:I

.field private final LOG_TAG:Ljava/lang/String;

.field private MARGIN:I

.field public MAX_COLOR_INDEX:I

.field private NUM_COLUMN:I

.field private NUM_ROW:I

.field private POSITION_GAP:I

.field private bClearFocus:Z

.field private isShowDrawableInLastBlock:Z

.field private mColorShadow:Landroid/graphics/drawable/Drawable;

.field private mFocusedColorIndex:I

.field private mFocusedDrawable:Landroid/graphics/drawable/Drawable;

.field protected mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

.field private mOnColorChangedListener:Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView$OnColorChangedListener;

.field private mOnFocusChangedListener:Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView$OnFocusChangedListener;

.field private mOnSelectCustomColorListener:Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView$OnSelectCustomColorListener;

.field private mPreviousColorIndex:I

.field private mSelectDrawable:Landroid/graphics/drawable/Drawable;

.field private mSelectedColorIndex:I

.field private m_bDrawFocusImage:Z

.field private m_bKeepCustomColor:Z

.field private m_nSquitBeforeColorIndex:I

.field private rainbow:Landroid/graphics/Bitmap;

.field public useCustomColor:Z


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/16 v5, 0x21

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 33
    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COVER_BACKGROUND_COLOR_DEFAULT:I

    .line 34
    const/16 v0, 0x6b

    const/16 v1, 0x77

    invoke-static {v4, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COVER_BACKGROUND_COLOR_1:I

    .line 35
    const/16 v0, 0x98

    const/16 v1, 0x24

    const/16 v2, 0x69

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COVER_BACKGROUND_COLOR_2:I

    .line 36
    const/16 v0, 0x15

    const/16 v1, 0x2f

    const/16 v2, 0x26

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COVER_BACKGROUND_COLOR_3:I

    .line 37
    const/16 v0, 0x91

    const/16 v1, 0x22

    invoke-static {v0, v1, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COVER_BACKGROUND_COLOR_4:I

    .line 38
    const/16 v0, 0x41

    const/16 v1, 0x4f

    const/16 v2, 0x13

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COVER_BACKGROUND_COLOR_5:I

    .line 39
    const/16 v0, 0x53

    const/16 v1, 0x10

    invoke-static {v0, v3, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COVER_BACKGROUND_COLOR_6:I

    .line 40
    const/16 v0, 0x1d

    const/16 v1, 0x14

    const/16 v2, 0x3d

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COVER_BACKGROUND_COLOR_7:I

    .line 41
    const/16 v0, 0x2e

    const/16 v1, 0x1a

    const/16 v2, 0xd

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COVER_BACKGROUND_COLOR_8:I

    .line 42
    const/16 v0, 0x75

    const/16 v1, 0x48

    invoke-static {v0, v1, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COVER_BACKGROUND_COLOR_9:I

    .line 43
    const/16 v0, 0x25

    invoke-static {v0, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COVER_BACKGROUND_COLOR_10:I

    .line 59
    const/16 v0, 0xb

    new-array v0, v0, [I

    sget v1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COVER_BACKGROUND_COLOR_1:I

    aput v1, v0, v3

    const/4 v1, 0x1

    sget v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COVER_BACKGROUND_COLOR_2:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COVER_BACKGROUND_COLOR_3:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COVER_BACKGROUND_COLOR_4:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COVER_BACKGROUND_COLOR_5:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COVER_BACKGROUND_COLOR_6:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COVER_BACKGROUND_COLOR_7:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COVER_BACKGROUND_COLOR_8:I

    aput v2, v0, v1

    sget v1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COVER_BACKGROUND_COLOR_9:I

    aput v1, v0, v4

    const/16 v1, 0x9

    sget v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COVER_BACKGROUND_COLOR_10:I

    aput v2, v0, v1

    const/16 v1, 0xa

    sget v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COVER_BACKGROUND_COLOR_DEFAULT:I

    aput v2, v0, v1

    sput-object v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COLORS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 117
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->LOG_TAG:Ljava/lang/String;

    .line 76
    iput v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->NUM_ROW:I

    .line 77
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->NUM_COLUMN:I

    .line 85
    iput v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->MARGIN:I

    .line 86
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->GAP:I

    .line 87
    iput v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->POSITION_GAP:I

    .line 93
    iput v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mSelectedColorIndex:I

    .line 94
    iput v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mPreviousColorIndex:I

    .line 96
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->useCustomColor:Z

    .line 97
    sget-object v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COLORS:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->MAX_COLOR_INDEX:I

    .line 99
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->m_bKeepCustomColor:Z

    .line 101
    iput v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mFocusedColorIndex:I

    .line 102
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->m_bDrawFocusImage:Z

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->bClearFocus:Z

    .line 110
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->m_nSquitBeforeColorIndex:I

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 121
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->LOG_TAG:Ljava/lang/String;

    .line 76
    iput v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->NUM_ROW:I

    .line 77
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->NUM_COLUMN:I

    .line 85
    iput v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->MARGIN:I

    .line 86
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->GAP:I

    .line 87
    iput v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->POSITION_GAP:I

    .line 93
    iput v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mSelectedColorIndex:I

    .line 94
    iput v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mPreviousColorIndex:I

    .line 96
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->useCustomColor:Z

    .line 97
    sget-object v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COLORS:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->MAX_COLOR_INDEX:I

    .line 99
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->m_bKeepCustomColor:Z

    .line 101
    iput v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mFocusedColorIndex:I

    .line 102
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->m_bDrawFocusImage:Z

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->bClearFocus:Z

    .line 110
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->m_nSquitBeforeColorIndex:I

    .line 122
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 126
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->LOG_TAG:Ljava/lang/String;

    .line 76
    iput v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->NUM_ROW:I

    .line 77
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->NUM_COLUMN:I

    .line 85
    iput v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->MARGIN:I

    .line 86
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->GAP:I

    .line 87
    iput v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->POSITION_GAP:I

    .line 93
    iput v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mSelectedColorIndex:I

    .line 94
    iput v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mPreviousColorIndex:I

    .line 96
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->useCustomColor:Z

    .line 97
    sget-object v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COLORS:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->MAX_COLOR_INDEX:I

    .line 99
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->m_bKeepCustomColor:Z

    .line 101
    iput v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mFocusedColorIndex:I

    .line 102
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->m_bDrawFocusImage:Z

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->bClearFocus:Z

    .line 110
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->m_nSquitBeforeColorIndex:I

    .line 127
    return-void
.end method

.method private applyColor(IZ)V
    .registers 6
    .param p1, "nIndex"    # I
    .param p2, "isUpEvent"    # Z

    .prologue
    .line 249
    iget v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mSelectedColorIndex:I

    .line 250
    .local v0, "previousColorIndex":I
    iput p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mSelectedColorIndex:I

    .line 252
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->invalidate()V

    .line 254
    iget v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->MAX_COLOR_INDEX:I

    if-ne p1, v1, :cond_36

    .line 256
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->useCustomColor:Z

    if-nez v1, :cond_28

    if-eqz p2, :cond_28

    .line 258
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mOnSelectCustomColorListener:Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView$OnSelectCustomColorListener;

    if-eqz v1, :cond_28

    .line 259
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mOnSelectCustomColorListener:Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView$OnSelectCustomColorListener;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView$OnSelectCustomColorListener;->onSelectCustomColor()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->useCustomColor:Z

    .line 260
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->m_bKeepCustomColor:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_28

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->useCustomColor:Z

    if-nez v1, :cond_28

    .line 261
    iput v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mSelectedColorIndex:I

    .line 271
    :cond_28
    :goto_28
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mOnColorChangedListener:Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView$OnColorChangedListener;

    if-eqz v1, :cond_35

    .line 272
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mOnColorChangedListener:Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView$OnColorChangedListener;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->getColor()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    .line 274
    :cond_35
    return-void

    .line 267
    :cond_36
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->m_bKeepCustomColor:Z

    if-nez v1, :cond_28

    .line 268
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->useCustomColor:Z

    goto :goto_28
.end method

.method private changeColor(FFZ)V
    .registers 11
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "isUpEvent"    # Z

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COLOR_PICKER_WIDTH:I

    sub-int/2addr v5, v6

    div-int/lit8 v2, v5, 0x2

    .line 232
    .local v2, "pl":I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->NUM_ROW:I

    div-int v3, v5, v6

    .line 233
    .local v3, "pt":I
    const/4 v4, 0x0

    .line 234
    .local v4, "x_idx":I
    iget v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COLOR_SHADOW_WIDTH:I

    add-int/2addr v5, v2

    iget v6, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->MARGIN:I

    add-int v0, v5, v6

    .line 236
    .local v0, "cur_x":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1a
    iget v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->NUM_COLUMN:I

    add-int/lit8 v5, v5, 0x1

    if-ge v1, v5, :cond_27

    .line 237
    add-int/lit8 v4, v1, -0x1

    .line 238
    int-to-float v5, v0

    cmpl-float v5, v5, p1

    if-lez v5, :cond_3a

    .line 243
    :cond_27
    int-to-float v5, v3

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_36

    iget v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->NUM_COLUMN:I

    add-int/2addr v5, v4

    iget v6, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->MAX_COLOR_INDEX:I

    if-gt v5, v6, :cond_36

    .line 244
    iget v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->NUM_COLUMN:I

    add-int/2addr v4, v5

    .line 245
    :cond_36
    invoke-direct {p0, v4, p3}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->applyColor(IZ)V

    .line 246
    return-void

    .line 241
    :cond_3a
    iget v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COLOR_SHADOW_WIDTH:I

    iget v6, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->GAP:I

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 236
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a
.end method

.method private drawColors(Landroid/graphics/Canvas;)V
    .registers 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 277
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->MARGIN:I

    move/from16 v17, v0

    .line 278
    .local v17, "x":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->MARGIN:I

    move/from16 v18, v0

    .line 279
    .local v18, "y":I
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    .line 280
    .local v15, "rect":Landroid/graphics/Rect;
    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    .line 281
    .local v16, "selectorRect":Landroid/graphics/Rect;
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 283
    .local v11, "focusedRect":Landroid/graphics/Rect;
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_1c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->NUM_ROW:I

    if-ge v13, v2, :cond_112

    .line 284
    const/16 v17, 0x0

    .line 285
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COLOR_SHADOW_HEIGHT:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->GAP:I

    add-int/2addr v2, v3

    mul-int/2addr v2, v13

    add-int/lit8 v18, v2, 0x5

    .line 287
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_31
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->NUM_COLUMN:I

    if-ge v12, v2, :cond_10e

    .line 288
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COLOR_SHADOW_WIDTH:I

    add-int v2, v2, v17

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COLOR_HEIGHT:I

    add-int v3, v3, v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 289
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->NUM_COLUMN:I

    mul-int/2addr v2, v13

    add-int v10, v2, v12

    .line 290
    .local v10, "colorIndex":I
    sget-object v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COLORS:[I

    aget v9, v2, v10

    .line 292
    .local v9, "color":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->NUM_COLUMN:I

    add-int/lit8 v2, v2, -0x1

    if-ne v12, v2, :cond_82

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->NUM_ROW:I

    add-int/lit8 v2, v2, -0x1

    if-ne v13, v2, :cond_82

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->isShowDrawableInLastBlock:Z

    if-nez v2, :cond_82

    .line 293
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x108071c

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 294
    .local v8, "bitmapTrans":Landroid/graphics/Bitmap;
    iget v2, v15, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v15, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 297
    .end local v8    # "bitmapTrans":Landroid/graphics/Bitmap;
    :cond_82
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 298
    .local v7, "paint":Landroid/graphics/Paint;
    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 299
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 301
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 302
    iget v2, v15, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v15, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 303
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->MARGIN:I

    int-to-float v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->MARGIN:I

    int-to-float v4, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COLOR_WIDTH:I

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COLOR_HEIGHT:I

    int-to-float v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 304
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 305
    .local v14, "mLinePaint":Landroid/graphics/Paint;
    const/4 v2, -0x1

    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 306
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 307
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 308
    new-instance v2, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->MARGIN:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->MARGIN:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COLOR_WIDTH:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COLOR_HEIGHT:I

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v14}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 309
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 311
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mSelectedColorIndex:I

    if-ne v10, v2, :cond_f0

    .line 312
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 315
    :cond_f0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->getDrawFocus()Z

    move-result v2

    if-eqz v2, :cond_ff

    .line 317
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mFocusedColorIndex:I

    if-ne v10, v2, :cond_ff

    .line 318
    invoke-virtual {v11, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 322
    :cond_ff
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COLOR_SHADOW_WIDTH:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->GAP:I

    add-int/2addr v2, v3

    add-int v17, v17, v2

    .line 287
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_31

    .line 283
    .end local v7    # "paint":Landroid/graphics/Paint;
    .end local v9    # "color":I
    .end local v10    # "colorIndex":I
    .end local v14    # "mLinePaint":Landroid/graphics/Paint;
    :cond_10e
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1c

    .line 326
    .end local v12    # "i":I
    :cond_112
    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->MARGIN:I

    sub-int/2addr v2, v3

    move-object/from16 v0, v16

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 327
    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->MARGIN:I

    add-int/2addr v2, v3

    move-object/from16 v0, v16

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 328
    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->MARGIN:I

    sub-int/2addr v2, v3

    move-object/from16 v0, v16

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 329
    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->MARGIN:I

    add-int/2addr v2, v3

    move-object/from16 v0, v16

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 330
    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-gez v2, :cond_151

    .line 331
    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 333
    :cond_151
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->bClearFocus:Z

    if-eqz v2, :cond_169

    .line 335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mSelectDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 336
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mSelectDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 339
    :cond_169
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->getDrawFocus()Z

    move-result v2

    if-eqz v2, :cond_17f

    .line 341
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v11}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 342
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 344
    :cond_17f
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->sendIntent()V

    .line 345
    return-void
.end method

.method private initColorPicker(II)V
    .registers 16
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const v12, 0x108071b

    const/4 v11, 0x6

    const/4 v10, 0x0

    const/4 v1, 0x0

    .line 148
    iput p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COLOR_PICKER_WIDTH:I

    .line 149
    iput p2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COLOR_PICKER_HEIGHT:I

    .line 151
    const-string v2, "SpLitColorPickerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "COLOR_PICKER_WIDTH - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COLOR_PICKER_WIDTH:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_8b

    .line 154
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x108071d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    .line 155
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COLOR_SHADOW_WIDTH:I

    .line 156
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COLOR_SHADOW_HEIGHT:I

    .line 158
    iget v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COLOR_PICKER_WIDTH:I

    iget v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->NUM_COLUMN:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->GAP:I

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->NUM_COLUMN:I

    div-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COLOR_SHADOW_WIDTH:I

    .line 159
    iget v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COLOR_PICKER_HEIGHT:I

    iget v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->NUM_ROW:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->GAP:I

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->NUM_ROW:I

    div-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COLOR_SHADOW_HEIGHT:I

    .line 165
    const-string v2, "SpLitColorPickerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "COLOR_SHADOW_WIDTH - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COLOR_SHADOW_WIDTH:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COLOR_SHADOW_WIDTH:I

    iget v7, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COLOR_SHADOW_HEIGHT:I

    invoke-direct {v3, v10, v10, v4, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 171
    :cond_8b
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COLOR_WIDTH:I

    .line 173
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COLOR_HEIGHT:I

    .line 176
    iget v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COLOR_SHADOW_WIDTH:I

    iput v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COLOR_WIDTH:I

    .line 177
    iget v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COLOR_SHADOW_HEIGHT:I

    iput v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COLOR_HEIGHT:I

    .line 179
    const-string v2, "SpLitColorPickerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "COLOR_WIDTH - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COLOR_WIDTH:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mSelectDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_cb

    .line 182
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mSelectDrawable:Landroid/graphics/drawable/Drawable;

    .line 185
    :cond_cb
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_d9

    .line 186
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    .line 189
    :cond_d9
    new-array v5, v11, [I

    fill-array-data v5, :array_132

    .line 193
    .local v5, "colors":[I
    new-array v6, v11, [F

    fill-array-data v6, :array_142

    .line 197
    .local v6, "positions":[F
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->rainbow:Landroid/graphics/Bitmap;

    if-nez v2, :cond_131

    .line 198
    iget v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COLOR_SHADOW_WIDTH:I

    iget v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COLOR_SHADOW_HEIGHT:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->rainbow:Landroid/graphics/Bitmap;

    .line 199
    new-instance v8, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->rainbow:Landroid/graphics/Bitmap;

    invoke-direct {v8, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 200
    .local v8, "c":Landroid/graphics/Canvas;
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COLOR_SHADOW_WIDTH:I

    iget v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->POSITION_GAP:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v3, v2

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v4, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 202
    .local v0, "g":Landroid/graphics/LinearGradient;
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 203
    .local v9, "p":Landroid/graphics/Paint;
    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 204
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 205
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 206
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->POSITION_GAP:I

    iget v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->POSITION_GAP:I

    iget v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COLOR_WIDTH:I

    iget v7, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COLOR_HEIGHT:I

    invoke-direct {v1, v2, v3, v4, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v8, v1, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 207
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 209
    .end local v0    # "g":Landroid/graphics/LinearGradient;
    .end local v8    # "c":Landroid/graphics/Canvas;
    .end local v9    # "p":Landroid/graphics/Paint;
    :cond_131
    return-void

    .line 189
    :array_132
    .array-data 4
        -0x10000
        -0x100
        -0xff0100
        -0xff0001
        -0xffff01
        -0xff01
    .end array-data

    .line 193
    :array_142
    .array-data 4
        0x0
        0x3e4ccccd
        0x3ecccccd
        0x3f19999a
        0x3f4ccccd
        0x3f800000
    .end array-data
.end method


# virtual methods
.method public cleanUp()V
    .registers 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->rainbow:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    .line 443
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->rainbow:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 444
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->rainbow:Landroid/graphics/Bitmap;

    .line 446
    :cond_c
    return-void
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 433
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 438
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getColor()I
    .registers 3

    .prologue
    .line 373
    sget-object v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COLORS:[I

    iget v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mSelectedColorIndex:I

    aget v0, v0, v1

    return v0
.end method

.method public getColorIndex()I
    .registers 2

    .prologue
    .line 144
    iget v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mSelectedColorIndex:I

    return v0
.end method

.method public getDrawFocus()Z
    .registers 2

    .prologue
    .line 557
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->m_bDrawFocusImage:Z

    return v0
.end method

.method public getSquitBeforeColor()I
    .registers 3

    .prologue
    .line 377
    sget-object v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COLORS:[I

    iget v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->m_nSquitBeforeColorIndex:I

    aget v0, v0, v1

    return v0
.end method

.method public isSelectedColor()Z
    .registers 2

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->bClearFocus:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 407
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 409
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->drawColors(Landroid/graphics/Canvas;)V

    .line 410
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 9
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v5, 0x42

    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 458
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->playSoundEffect(I)V

    .line 460
    const/16 v1, 0x13

    if-ne p1, v1, :cond_37

    .line 462
    iget v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mFocusedColorIndex:I

    iget v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->NUM_COLUMN:I

    if-ge v1, v2, :cond_29

    .line 464
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->setDrawFocus(Z)V

    .line 466
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mOnFocusChangedListener:Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView$OnFocusChangedListener;

    if-eqz v1, :cond_28

    .line 467
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mOnFocusChangedListener:Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView$OnFocusChangedListener;

    iget v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mFocusedColorIndex:I

    invoke-interface {v1, p1, v2}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView$OnFocusChangedListener;->onRequestColorPicker(II)V

    .line 539
    :cond_28
    :goto_28
    return v0

    .line 471
    :cond_29
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->setDrawFocus(Z)V

    .line 472
    iget v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mFocusedColorIndex:I

    iget v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->NUM_COLUMN:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mFocusedColorIndex:I

    .line 473
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->postInvalidate()V

    goto :goto_28

    .line 477
    :cond_37
    const/16 v1, 0x14

    if-ne p1, v1, :cond_58

    .line 479
    iget v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mFocusedColorIndex:I

    iget v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->NUM_COLUMN:I

    if-lt v1, v2, :cond_4a

    .line 481
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->setDrawFocus(Z)V

    .line 482
    const/16 v1, 0x82

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->requestFocus(I)Z

    goto :goto_28

    .line 486
    :cond_4a
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->setDrawFocus(Z)V

    .line 487
    iget v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mFocusedColorIndex:I

    iget v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->NUM_COLUMN:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mFocusedColorIndex:I

    .line 488
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->postInvalidate()V

    goto :goto_28

    .line 492
    :cond_58
    const/16 v1, 0x15

    if-ne p1, v1, :cond_76

    .line 494
    iget v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mFocusedColorIndex:I

    if-nez v1, :cond_69

    .line 496
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->setDrawFocus(Z)V

    .line 497
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->requestFocus(I)Z

    goto :goto_28

    .line 501
    :cond_69
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->setDrawFocus(Z)V

    .line 502
    iget v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mFocusedColorIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mFocusedColorIndex:I

    .line 503
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->postInvalidate()V

    goto :goto_28

    .line 507
    :cond_76
    const/16 v1, 0x16

    if-ne p1, v1, :cond_99

    .line 509
    iget v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mFocusedColorIndex:I

    iget v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->NUM_COLUMN:I

    iget v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->NUM_ROW:I

    mul-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_8c

    .line 511
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->setDrawFocus(Z)V

    .line 512
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->requestFocus(I)Z

    goto :goto_28

    .line 516
    :cond_8c
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->setDrawFocus(Z)V

    .line 517
    iget v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mFocusedColorIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mFocusedColorIndex:I

    .line 518
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->postInvalidate()V

    goto :goto_28

    .line 522
    :cond_99
    if-ne p1, v5, :cond_c2

    .line 524
    iget v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mFocusedColorIndex:I

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->setColorIndex(I)V

    .line 525
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->postInvalidate()V

    .line 526
    iget v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mFocusedColorIndex:I

    invoke-direct {p0, v1, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->applyColor(IZ)V

    .line 528
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mOnFocusChangedListener:Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView$OnFocusChangedListener;

    if-eqz v1, :cond_28

    .line 530
    iget v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mFocusedColorIndex:I

    iget v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->MAX_COLOR_INDEX:I

    if-ne v1, v2, :cond_bb

    .line 531
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mOnFocusChangedListener:Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView$OnFocusChangedListener;

    iget v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mFocusedColorIndex:I

    invoke-interface {v1, p1, v2}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView$OnFocusChangedListener;->onRequestColorPicker(II)V

    goto/16 :goto_28

    .line 533
    :cond_bb
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mOnFocusChangedListener:Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView$OnFocusChangedListener;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView$OnFocusChangedListener;->onUnRequestColorPicker()V

    goto/16 :goto_28

    .line 539
    :cond_c2
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_28
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 544
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const/16 v0, 0x13

    if-eq p1, v0, :cond_1d

    const/16 v0, 0x14

    if-eq p1, v0, :cond_1d

    const/16 v0, 0x15

    if-eq p1, v0, :cond_1d

    const/16 v0, 0x16

    if-eq p1, v0, :cond_1d

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1f

    .line 551
    :cond_1d
    const/4 v0, 0x1

    .line 553
    :goto_1e
    return v0

    :cond_1f
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1e
.end method

.method protected onLayout(ZIIII)V
    .registers 9
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 394
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 395
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->isShowDrawableInLastBlock:Z

    if-nez v1, :cond_7

    .line 399
    :cond_7
    sub-int v1, p4, p2

    iget v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->NUM_COLUMN:I

    div-int/2addr v1, v2

    iget v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->NUM_ROW:I

    mul-int v0, v1, v2

    .line 400
    .local v0, "height":I
    if-eqz p1, :cond_17

    .line 401
    sub-int v1, p4, p2

    invoke-direct {p0, v1, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->initColorPicker(II)V

    .line 403
    :cond_17
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 414
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 415
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 416
    .local v1, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_1e

    .line 428
    :goto_11
    :pswitch_11
    return v4

    .line 420
    :pswitch_12
    invoke-direct {p0, v0, v1, v3}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->changeColor(FFZ)V

    goto :goto_11

    .line 423
    :pswitch_16
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->playSoundEffect(I)V

    .line 424
    invoke-direct {p0, v0, v1, v4}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->changeColor(FFZ)V

    goto :goto_11

    .line 416
    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_11
        :pswitch_16
        :pswitch_12
    .end packed-switch
.end method

.method public sendIntent()V
    .registers 4

    .prologue
    .line 570
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v1

    if-nez v1, :cond_d

    .line 577
    :cond_c
    :goto_c
    return-void

    .line 573
    :cond_d
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 574
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.cover.COLOR_PICKER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 575
    const-string v1, "color"

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->getColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 576
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_c
.end method

.method public setColor(I)V
    .registers 5
    .param p1, "color"    # I

    .prologue
    .line 348
    const/4 v0, 0x0

    .line 350
    .local v0, "foundInPreset":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    sget-object v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COLORS:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    if-ge v1, v2, :cond_12

    .line 351
    sget-object v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COLORS:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_1e

    .line 352
    iput v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mSelectedColorIndex:I

    .line 353
    const/4 v0, 0x1

    .line 358
    :cond_12
    if-nez v0, :cond_21

    .line 359
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->useCustomColor:Z

    .line 360
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->setCustomColor(I)V

    .line 369
    :cond_1a
    :goto_1a
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->invalidate()V

    .line 370
    return-void

    .line 350
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 363
    :cond_21
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->m_bKeepCustomColor:Z

    if-nez v2, :cond_1a

    .line 365
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->useCustomColor:Z

    goto :goto_1a
.end method

.method public setColorIndex(I)V
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 138
    iget v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mSelectedColorIndex:I

    iput v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mPreviousColorIndex:I

    .line 139
    iput p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mSelectedColorIndex:I

    .line 140
    iput p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mFocusedColorIndex:I

    .line 141
    return-void
.end method

.method public setCustomColor(I)V
    .registers 4
    .param p1, "color"    # I

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->useCustomColor:Z

    if-eqz v0, :cond_8

    .line 221
    iget v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->MAX_COLOR_INDEX:I

    iput v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mSelectedColorIndex:I

    .line 224
    :cond_8
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->isShowDrawableInLastBlock:Z

    if-eqz v0, :cond_12

    .line 225
    sget-object v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COLORS:[I

    iget v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->MAX_COLOR_INDEX:I

    aput p1, v0, v1

    .line 227
    :cond_12
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->invalidate()V

    .line 228
    return-void
.end method

.method public setDrawFocus(Z)V
    .registers 2
    .param p1, "m_bDrawFocusImage"    # Z

    .prologue
    .line 561
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->m_bDrawFocusImage:Z

    .line 562
    return-void
.end method

.method public setIsSelectedColor(Z)V
    .registers 2
    .param p1, "bSelect"    # Z

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->bClearFocus:Z

    .line 135
    return-void
.end method

.method public setKeepCustomColor(Z)V
    .registers 2
    .param p1, "a_bKeep"    # Z

    .prologue
    .line 453
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->m_bKeepCustomColor:Z

    .line 454
    return-void
.end method

.method public setLastIndexColorValue(IZ)V
    .registers 5
    .param p1, "backgroundColorValueFromDB"    # I
    .param p2, "value"    # Z

    .prologue
    .line 565
    sget-object v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COLORS:[I

    iget v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->MAX_COLOR_INDEX:I

    aput p1, v0, v1

    .line 566
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->isShowDrawableInLastBlock:Z

    .line 567
    return-void
.end method

.method public setOnColorChangedListener(Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView$OnColorChangedListener;)V
    .registers 2
    .param p1, "l"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView$OnColorChangedListener;

    .prologue
    .line 381
    iput-object p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mOnColorChangedListener:Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView$OnColorChangedListener;

    .line 382
    return-void
.end method

.method public setOnFocusChangedListener(Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView$OnFocusChangedListener;)V
    .registers 2
    .param p1, "l"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView$OnFocusChangedListener;

    .prologue
    .line 389
    iput-object p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mOnFocusChangedListener:Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView$OnFocusChangedListener;

    .line 390
    return-void
.end method

.method public setOnSelectCustomColorListener(Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView$OnSelectCustomColorListener;)V
    .registers 2
    .param p1, "l"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView$OnSelectCustomColorListener;

    .prologue
    .line 385
    iput-object p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mOnSelectCustomColorListener:Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView$OnSelectCustomColorListener;

    .line 386
    return-void
.end method

.method public setVisibility(I)V
    .registers 4
    .param p1, "visibility"    # I

    .prologue
    .line 213
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 214
    const/16 v0, 0x8

    if-ne p1, v0, :cond_15

    iget v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mSelectedColorIndex:I

    iget v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->MAX_COLOR_INDEX:I

    if-ne v0, v1, :cond_15

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->useCustomColor:Z

    if-nez v0, :cond_15

    .line 215
    iget v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mPreviousColorIndex:I

    iput v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->mSelectedColorIndex:I

    .line 217
    :cond_15
    return-void
.end method

.method public useCustomColor()Z
    .registers 2

    .prologue
    .line 449
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->useCustomColor:Z

    return v0
.end method
