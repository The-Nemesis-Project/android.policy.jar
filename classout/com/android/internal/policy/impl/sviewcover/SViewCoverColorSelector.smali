.class public Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;
.super Landroid/widget/FrameLayout;
.source "SViewCoverColorSelector.java"


# static fields
.field private static final COVER_COLOR_BLACK:I = 0x1

.field private static final COVER_COLOR_CHARCOAL_GRAY:I = 0xa

.field private static final COVER_COLOR_DEFAULT:I = 0x0

.field private static final COVER_COLOR_GRAYISH_BLUE:I = 0x8

.field private static final COVER_COLOR_INDIGO_BLUE:I = 0x6

.field private static final COVER_COLOR_MAGENTA:I = 0x7

.field private static final COVER_COLOR_MESTARD_YELLOW:I = 0x9

.field private static final COVER_COLOR_ORANGE:I = 0x4

.field private static final COVER_COLOR_OTMIL:I = 0x5

.field private static final COVER_COLOR_SOFT_PINK:I = 0x3

.field private static final COVER_COLOR_WHITE:I = 0x2


# instance fields
.field private mColorPickerBackground:Landroid/view/View;

.field private mControlView:Landroid/view/View;

.field private mCoverPatternImage:Landroid/widget/ImageView;

.field private mCurrentCoverBackgroundColor:I

.field private mCurrentCoverColor:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private mSViewCoverColorSelector:Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;

.field private mSViewCoverManagerCallback:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SViewCoverManagerCallback;

.field private mSetButton:Landroid/widget/Button;

.field private mTargetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v3, -0x1000000

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->mPowerManager:Landroid/os/PowerManager;

    .line 58
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 59
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x10900db

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 61
    const v1, 0x10202ca

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->mCoverPatternImage:Landroid/widget/ImageView;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "s_vew_cover_background_color"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->mCurrentCoverBackgroundColor:I

    .line 63
    iget v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->mCurrentCoverBackgroundColor:I

    if-ne v1, v3, :cond_3f

    .line 64
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->mCoverPatternImage:Landroid/widget/ImageView;

    const/16 v2, 0x1a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 68
    :goto_3e
    return-void

    .line 66
    :cond_3f
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->mCoverPatternImage:Landroid/widget/ImageView;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    goto :goto_3e
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;)Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SViewCoverManagerCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->mSViewCoverManagerCallback:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SViewCoverManagerCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;)Landroid/os/PowerManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;

    .prologue
    .line 19
    iget v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->mCurrentCoverBackgroundColor:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;
    .param p1, "x1"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->mCurrentCoverBackgroundColor:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->mTargetView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->mColorPickerBackground:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->mCoverPatternImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->mControlView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;

    .prologue
    .line 19
    iget v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->mCurrentCoverColor:I

    return v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 72
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 73
    const v0, 0x10202c9

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->mColorPickerBackground:Landroid/view/View;

    .line 74
    iget v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->mCurrentCoverBackgroundColor:I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->setBackgroundColor(I)V

    .line 75
    const v0, 0x10202c8

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->mSViewCoverColorSelector:Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;

    .line 76
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->mSViewCoverColorSelector:Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;

    new-instance v1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector$1;-><init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->setOnColorChangedListener(Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView$OnColorChangedListener;)V

    .line 97
    const v0, 0x10202cb

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->mSetButton:Landroid/widget/Button;

    .line 98
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->mSetButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector$2;-><init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 162
    const/4 v0, 0x1

    return v0
.end method

.method public setControlView(Landroid/view/View;)V
    .registers 3
    .param p1, "sViewCover"    # Landroid/view/View;

    .prologue
    .line 166
    if-eqz p1, :cond_14

    .line 167
    const v0, 0x10202c2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->mControlView:Landroid/view/View;

    .line 168
    const v0, 0x10202c6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->mTargetView:Landroid/view/View;

    .line 170
    :cond_14
    return-void
.end method

.method public setSViewCoverManagerCallback(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SViewCoverManagerCallback;)V
    .registers 2
    .param p1, "sViewCoverManagerCallback"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SViewCoverManagerCallback;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->mSViewCoverManagerCallback:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SViewCoverManagerCallback;

    .line 174
    return-void
.end method

.method public updateCurrentCoverColor(I)V
    .registers 6
    .param p1, "coverColor"    # I

    .prologue
    const/4 v3, 0x0

    .line 115
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "s_vew_cover_color"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->mCurrentCoverColor:I

    .line 116
    iget v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->mCurrentCoverColor:I

    if-eq v1, p1, :cond_42

    .line 117
    iput p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->mCurrentCoverColor:I

    .line 118
    const/high16 v0, -0x1000000

    .line 119
    .local v0, "selectedColor":I
    packed-switch p1, :pswitch_data_58

    .line 146
    sget v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COVER_BACKGROUND_COLOR_DEFAULT:I

    .line 149
    :goto_1c
    iput v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->mCurrentCoverBackgroundColor:I

    .line 150
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->setVisibility(I)V

    .line 151
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->mControlView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 152
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->mSViewCoverColorSelector:Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;

    iget v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->mCurrentCoverBackgroundColor:I

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->setColor(I)V

    .line 153
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->mTargetView:Landroid/view/View;

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->mColorPickerBackground:Landroid/view/View;

    if-eqz v1, :cond_42

    .line 154
    iget v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->mCurrentCoverBackgroundColor:I

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->setBackgroundColor(I)V

    .line 155
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->mTargetView:Landroid/view/View;

    iget v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->mCurrentCoverBackgroundColor:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 158
    .end local v0    # "selectedColor":I
    :cond_42
    return-void

    .line 121
    .restart local v0    # "selectedColor":I
    :pswitch_43
    sget v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COVER_BACKGROUND_COLOR_DEFAULT:I

    .line 122
    goto :goto_1c

    .line 125
    :pswitch_46
    sget v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COVER_BACKGROUND_COLOR_1:I

    .line 126
    goto :goto_1c

    .line 129
    :pswitch_49
    sget v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COVER_BACKGROUND_COLOR_2:I

    .line 130
    goto :goto_1c

    .line 133
    :pswitch_4c
    sget v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COVER_BACKGROUND_COLOR_3:I

    .line 134
    goto :goto_1c

    .line 136
    :pswitch_4f
    sget v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COVER_BACKGROUND_COLOR_4:I

    .line 137
    goto :goto_1c

    .line 140
    :pswitch_52
    sget v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COVER_BACKGROUND_COLOR_5:I

    .line 141
    goto :goto_1c

    .line 143
    :pswitch_55
    sget v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorPickerView;->COVER_BACKGROUND_COLOR_6:I

    .line 144
    goto :goto_1c

    .line 119
    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_43
        :pswitch_46
        :pswitch_46
        :pswitch_49
        :pswitch_52
        :pswitch_49
        :pswitch_52
        :pswitch_55
        :pswitch_4c
        :pswitch_4c
        :pswitch_4f
    .end packed-switch
.end method
