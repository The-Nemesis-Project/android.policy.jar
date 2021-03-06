.class public Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;
.super Landroid/app/Dialog;
.source "GuideRelayoutWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;
    }
.end annotation


# static fields
.field public static final CREATE_RESIZE_GUIDEVIEW_OFFSET:I = 0x3

.field public static final DIALOG_MODE_EXCHANGE:I = 0x3

.field public static final DIALOG_MODE_LEFT_RESIZE:I = 0x4

.field public static final DIALOG_MODE_MOVE:I = 0x1

.field public static final DIALOG_MODE_MOVE_N_RESIZE:I = 0x8

.field public static final DIALOG_MODE_NONE:I = 0x0

.field public static final DIALOG_MODE_RESIZE:I = 0x2

.field public static final DIALOG_MODE_RESIZE_BY_BORDER:I = 0x7

.field public static final DIALOG_MODE_TOPLEFT_RESIZE:I = 0x5

.field public static final DIALOG_MODE_TOPRIGHT_RESIZE:I = 0x6

.field public static final EXCHANGE_BACKGROUND_COLOR:I = -0x56000000

.field public static final LEFT_ARROW_ORANGE_RESOURCE:I = 0x10807a0

.field public static final LEFT_ARROW_RED_RESOURCE:I = 0x10807a1

.field public static final RECT_DRAWABLE_RESOURCE:I = 0x108068a

.field public static final RECT_MINIMUM_DRAWABLE_RESOURCE:I = 0x1080689

.field public static final REDRAW_GUIDELINE_OFFSET:I = 0x2

.field public static final RESIZE_SYMBOL_ORANGE_RESOURCE:I = 0x10807a4

.field public static final RESIZE_SYMBOL_RED_RESOURCE:I = 0x10807a5

.field public static final RIGHT_ARROW_ORANGE_RESOURCE:I = 0x10807a2

.field public static final RIGHT_ARROW_RED_RESOURCE:I = 0x10807a3


# instance fields
.field private final MAX_TASKS:I

.field final TAG:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private mActivityManager:Landroid/app/ActivityManager;

.field mBackground:Landroid/graphics/NinePatch;

.field mBmp:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field mCurHeight:I

.field mCurWidth:I

.field mDownPositionX:I

.field mDownPositionY:I

.field mFixedRatio:D

.field private mFreestyleStatusBarMargin_H:I

.field private mGuideDockingMargin:I

.field private mGuideDockingMarginFinger:I

.field mInitRect:Landroid/graphics/Rect;

.field mInnerView:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;

.field mIsDrag:Z

.field mIsFixedRatio:Z

.field mIsFixedSize:Z

.field mIsFreestyleOnly:Z

.field mIsMinimized:Z

.field private mIvt:[B

.field private mLayoutParam:Landroid/view/WindowManager$LayoutParams;

.field mLeftArrowOrangeBmp:Landroid/graphics/Bitmap;

.field mLeftArrowRedBmp:Landroid/graphics/Bitmap;

.field private mMaxSize:Landroid/graphics/Point;

.field mMinBackground:Landroid/graphics/NinePatch;

.field mMinHeight:I

.field mMinWidth:I

.field mMode:I

.field mOriginRect:Landroid/graphics/Rect;

.field private mPaddingWidth:I

.field mResizeSymbolOrangeBmp:Landroid/graphics/Bitmap;

.field mResizeSymbolRedBmp:Landroid/graphics/Bitmap;

.field mRightArrowOrangeBmp:Landroid/graphics/Bitmap;

.field mRightArrowRedBmp:Landroid/graphics/Bitmap;

.field private mStatusBarHeight:I

.field mTempRect:Landroid/graphics/Rect;

.field mUseCoutomView:Z

.field private final mUseDocking:Z

.field private mVibrator:Landroid/os/SystemVibrator;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;IILcom/android/internal/policy/impl/MultiPhoneWindow;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "start"    # Landroid/graphics/Point;
    .param p4, "delta"    # Landroid/graphics/Point;
    .param p5, "mode"    # I
    .param p6, "paddingWidth"    # I
    .param p7, "mwWindow"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 128
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 37
    const-string v4, "GuideRelayoutWindow"

    iput-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->TAG:Ljava/lang/String;

    .line 39
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mContext:Landroid/content/Context;

    .line 65
    const/16 v4, 0x14

    iput v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->MAX_TASKS:I

    .line 67
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInnerView:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;

    .line 68
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mOriginRect:Landroid/graphics/Rect;

    .line 69
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    .line 70
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    .line 71
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mBackground:Landroid/graphics/NinePatch;

    .line 72
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinBackground:Landroid/graphics/NinePatch;

    .line 74
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mBmp:Landroid/graphics/Bitmap;

    .line 75
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mResizeSymbolOrangeBmp:Landroid/graphics/Bitmap;

    .line 76
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mResizeSymbolRedBmp:Landroid/graphics/Bitmap;

    .line 78
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mLeftArrowOrangeBmp:Landroid/graphics/Bitmap;

    .line 79
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mRightArrowOrangeBmp:Landroid/graphics/Bitmap;

    .line 80
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mLeftArrowRedBmp:Landroid/graphics/Bitmap;

    .line 81
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mRightArrowRedBmp:Landroid/graphics/Bitmap;

    .line 83
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mStatusBarHeight:I

    .line 84
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mFreestyleStatusBarMargin_H:I

    .line 90
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMaxSize:Landroid/graphics/Point;

    .line 92
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mDownPositionX:I

    .line 93
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mDownPositionY:I

    .line 95
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMode:I

    .line 96
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinWidth:I

    .line 97
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinHeight:I

    .line 98
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mCurWidth:I

    .line 99
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mCurHeight:I

    .line 101
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mFixedRatio:D

    .line 103
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mIsDrag:Z

    .line 105
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mIsFixedRatio:Z

    .line 106
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mIsFixedSize:Z

    .line 107
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mIsFreestyleOnly:Z

    .line 108
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mIsMinimized:Z

    .line 109
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mUseCoutomView:Z

    .line 113
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mGuideDockingMargin:I

    .line 114
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mGuideDockingMarginFinger:I

    .line 119
    const/16 v4, 0x12

    new-array v4, v4, [B

    fill-array-data v4, :array_1e2

    iput-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mIvt:[B

    .line 129
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mContext:Landroid/content/Context;

    move-object v4, p1

    .line 130
    check-cast v4, Landroid/app/Activity;

    iput-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mActivity:Landroid/app/Activity;

    .line 131
    const-string v4, "activity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    iput-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mActivityManager:Landroid/app/ActivityManager;

    .line 132
    const-string v4, "window"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    iput-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 134
    new-instance v4, Landroid/graphics/Point;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMaxSize:Landroid/graphics/Point;

    .line 136
    iput p6, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPaddingWidth:I

    .line 139
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMaxSize:Landroid/graphics/Point;

    invoke-virtual {v4, v5}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 141
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mIsFixedRatio:Z

    .line 142
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mIsFixedSize:Z

    .line 143
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mIsFreestyleOnly:Z

    .line 144
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mUseCoutomView:Z

    .line 146
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mUseDocking:Z

    .line 149
    new-instance v0, Landroid/graphics/Rect;

    const/16 v4, 0x64

    const/16 v5, 0x64

    const/16 v6, 0x1f4

    const/16 v7, 0x320

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 151
    .local v0, "minimumSize":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinWidth:I

    .line 152
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinHeight:I

    .line 153
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mCurWidth:I

    .line 154
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mCurHeight:I

    .line 155
    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mCurWidth:I

    int-to-double v4, v4

    iget v6, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mCurHeight:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    iput-wide v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mFixedRatio:D

    .line 157
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 158
    .local v3, "window":Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    const/high16 v5, 0x1030000

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 159
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 160
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x105000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mFreestyleStatusBarMargin_H:I

    .line 163
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->getGlobalSystemUiVisibility()I

    move-result v4

    if-nez v4, :cond_1df

    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mFreestyleStatusBarMargin_H:I

    :goto_118
    iput v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mStatusBarHeight:I

    .line 165
    invoke-virtual {p0, p2}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->setApplicationRect(Landroid/graphics/Rect;)V

    .line 166
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->setNinePatchImg(Landroid/content/Context;)V

    .line 168
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 169
    .local v2, "r":Landroid/content/res/Resources;
    const v4, 0x10807a4

    invoke-static {v2, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mResizeSymbolOrangeBmp:Landroid/graphics/Bitmap;

    .line 170
    const v4, 0x10807a5

    invoke-static {v2, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mResizeSymbolRedBmp:Landroid/graphics/Bitmap;

    .line 171
    const v4, 0x10807a0

    invoke-static {v2, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mLeftArrowOrangeBmp:Landroid/graphics/Bitmap;

    .line 172
    const v4, 0x10807a2

    invoke-static {v2, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mRightArrowOrangeBmp:Landroid/graphics/Bitmap;

    .line 173
    const v4, 0x10807a1

    invoke-static {v2, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mLeftArrowRedBmp:Landroid/graphics/Bitmap;

    .line 174
    const v4, 0x10807a3

    invoke-static {v2, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mRightArrowRedBmp:Landroid/graphics/Bitmap;

    .line 179
    const-string v4, "vibrator"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/SystemVibrator;

    iput-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mVibrator:Landroid/os/SystemVibrator;

    .line 181
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 183
    new-instance v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;

    invoke-direct {v4, p0, p1, p0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;-><init>(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;Landroid/content/Context;Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInnerView:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;

    .line 185
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInnerView:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;

    iget v5, p3, Landroid/graphics/Point;->x:I

    # setter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosX:I
    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->access$002(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;I)I

    .line 186
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInnerView:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;

    iget v5, p3, Landroid/graphics/Point;->y:I

    # setter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosY:I
    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->access$102(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;I)I

    .line 188
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInnerView:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;

    iget v5, p4, Landroid/graphics/Point;->x:I

    # setter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mDeltaX:I
    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->access$202(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;I)I

    .line 189
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInnerView:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;

    iget v5, p4, Landroid/graphics/Point;->y:I

    # setter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mDeltaY:I
    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->access$302(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;I)I

    .line 191
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInnerView:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInnerView:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;

    iget v6, p3, Landroid/graphics/Point;->x:I

    iget v7, p3, Landroid/graphics/Point;->y:I

    # invokes: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->calculateGesture(II)I
    invoke-static {v5, v6, v7}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->access$500(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;II)I

    move-result v5

    # setter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I
    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->access$402(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;I)I

    .line 192
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInnerView:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    # setter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mCurrentOrientation:I
    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->access$602(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;I)I

    .line 194
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInnerView:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMaxSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMaxSize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-direct {v5, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v4, v5}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 200
    .local v1, "p":Landroid/view/WindowManager$LayoutParams;
    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v4, v4, 0x100

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 201
    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 202
    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 204
    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 206
    invoke-virtual {p0, p5}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->setMode(I)V

    .line 207
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 208
    return-void

    .line 163
    .end local v1    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "r":Landroid/content/res/Resources;
    :cond_1df
    const/4 v4, 0x0

    goto/16 :goto_118

    .line 119
    :array_1e2
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
        0xat
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x20t
        0x1t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        0x42t
    .end array-data
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    .prologue
    .line 35
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mStatusBarHeight:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    .prologue
    .line 35
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mFreestyleStatusBarMargin_H:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/graphics/Point;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMaxSize:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/view/WindowManager$LayoutParams;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;
    .param p1, "x1"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    .prologue
    .line 35
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPaddingWidth:I

    return v0
.end method

.method private createNinePatch(Landroid/graphics/Bitmap;Landroid/content/res/Resources;I)Landroid/graphics/NinePatch;
    .registers 7
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "resId"    # I

    .prologue
    .line 231
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 233
    invoke-static {p2, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 234
    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 236
    new-instance v0, Landroid/graphics/NinePatch;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    return-object v0
.end method

.method private getWindowMode(Landroid/app/ActivityManager$RunningTaskInfo;)I
    .registers 5
    .param p1, "t"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .prologue
    .line 820
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "windowMode"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 821
    .local v0, "windowModeField":Ljava/lang/reflect/Field;
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_d
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_d} :catch_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_d} :catch_12
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_d} :catch_f

    move-result v1

    .line 826
    .end local v0    # "windowModeField":Ljava/lang/reflect/Field;
    :goto_e
    return v1

    .line 824
    :catch_f
    move-exception v1

    .line 826
    :goto_10
    const/4 v1, 0x0

    goto :goto_e

    .line 823
    :catch_12
    move-exception v1

    goto :goto_10

    .line 822
    :catch_14
    move-exception v1

    goto :goto_10
.end method

.method private recycleBitmap(Landroid/graphics/Bitmap;)V
    .registers 2
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 212
    if-eqz p1, :cond_6

    .line 214
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 215
    const/4 p1, 0x0

    .line 218
    :cond_6
    return-void
.end method

.method private reviseWindowPosition(Landroid/graphics/Rect;Landroid/graphics/Point;)V
    .registers 7
    .param p1, "windowRect"    # Landroid/graphics/Rect;
    .param p2, "maxSize"    # Landroid/graphics/Point;

    .prologue
    .line 794
    const/16 v0, 0x12c

    .line 795
    .local v0, "boundaryX":I
    const/16 v1, 0xc8

    .line 797
    .local v1, "boundaryY":I
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mIsMinimized:Z

    if-eqz v2, :cond_10

    .line 798
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 799
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 802
    :cond_10
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v0

    if-le v2, v3, :cond_2f

    .line 803
    iget v2, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v0

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 809
    :cond_1f
    :goto_1f
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v1

    if-le v2, v3, :cond_3f

    .line 810
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 815
    :cond_2e
    :goto_2e
    return-void

    .line 805
    :cond_2f
    iget v2, p1, Landroid/graphics/Rect;->right:I

    if-ge v2, v0, :cond_1f

    .line 806
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int v2, v0, v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_1f

    .line 812
    :cond_3f
    iget v2, p1, Landroid/graphics/Rect;->top:I

    if-gez v2, :cond_2e

    .line 813
    iget v2, p1, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_2e
.end method

.method private setNinePatchImg(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 222
    const/4 v0, 0x0

    .line 223
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x108068a

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->createNinePatch(Landroid/graphics/Bitmap;Landroid/content/res/Resources;I)Landroid/graphics/NinePatch;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mBackground:Landroid/graphics/NinePatch;

    .line 224
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080689

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->createNinePatch(Landroid/graphics/Bitmap;Landroid/content/res/Resources;I)Landroid/graphics/NinePatch;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinBackground:Landroid/graphics/NinePatch;

    .line 225
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 227
    return-void
.end method


# virtual methods
.method public dismissGuideRelayoutWindow()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 260
    const-string v0, "GuideRelayoutWindow"

    const-string v1, "dismissGuideRelayoutWindow()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iput v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMode:I

    .line 262
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mIsDrag:Z

    .line 263
    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    .line 264
    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    .line 266
    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    .line 268
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 269
    return-void
.end method

.method public getGlobalSystemUiVisibility()I
    .registers 6

    .prologue
    .line 830
    const/4 v1, 0x0

    .line 832
    .local v1, "visibility":I
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getGlobalSystemUiVisibility"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 833
    .local v0, "m":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mWindowManager:Landroid/view/WindowManager;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_1e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1e} :catch_26
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1e} :catch_24
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1e} :catch_22
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1e} :catch_20

    move-result v1

    .line 839
    .end local v0    # "m":Ljava/lang/reflect/Method;
    :goto_1f
    return v1

    .line 837
    :catch_20
    move-exception v2

    goto :goto_1f

    .line 836
    :catch_22
    move-exception v2

    goto :goto_1f

    .line 835
    :catch_24
    move-exception v2

    goto :goto_1f

    .line 834
    :catch_26
    move-exception v2

    goto :goto_1f
.end method

.method public getMode()I
    .registers 2

    .prologue
    .line 244
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMode:I

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 283
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMode:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_d

    .line 285
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInnerView:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 289
    :goto_c
    return v0

    .line 288
    :cond_d
    const-string v0, "GuideRelayoutWindow"

    const-string v1, "onTouchEvent() consume is false"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public setApplicationRect(Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 248
    if-eqz p1, :cond_2b

    .line 249
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mOriginRect:Landroid/graphics/Rect;

    .line 250
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mOriginRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    .line 253
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mStatusBarHeight:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 255
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    .line 257
    :cond_2b
    return-void
.end method

.method public setCaptureImage(Landroid/graphics/Bitmap;)V
    .registers 2
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 279
    return-void
.end method

.method public setMode(I)V
    .registers 2
    .param p1, "mode"    # I

    .prologue
    .line 241
    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMode:I

    .line 242
    return-void
.end method

.method public setMovePosition(II)V
    .registers 6
    .param p1, "tx"    # I
    .param p2, "ty"    # I

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 274
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInnerView:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 276
    return-void
.end method
