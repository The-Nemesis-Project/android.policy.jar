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

.field public static final LEFT_ARROW_ORANGE_RESOURCE:I = 0x10806e9

.field public static final LEFT_ARROW_RED_RESOURCE:I = 0x10806ea

.field public static final RECT_DRAWABLE_RESOURCE:I = 0x10805fe

.field public static final RECT_MINIMUM_DRAWABLE_RESOURCE:I = 0x10805fd

.field public static final REDRAW_GUIDELINE_OFFSET:I = 0x2

.field public static final RESIZE_SYMBOL_ORANGE_RESOURCE:I = 0x10806ed

.field public static final RESIZE_SYMBOL_RED_RESOURCE:I = 0x10806ee

.field public static final RIGHT_ARROW_ORANGE_RESOURCE:I = 0x10806eb

.field public static final RIGHT_ARROW_RED_RESOURCE:I = 0x10806ec


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

.field private mMultiWindowState:I

.field mOriginRect:Landroid/graphics/Rect;

.field private mPaddingWidth:I

.field private mPreDockSide:I

.field mResizeSymbolOrangeBmp:Landroid/graphics/Bitmap;

.field mResizeSymbolRedBmp:Landroid/graphics/Bitmap;

.field mRightArrowOrangeBmp:Landroid/graphics/Bitmap;

.field mRightArrowRedBmp:Landroid/graphics/Bitmap;

.field private mStatusBarHeight:I

.field private mTargetDockSide:I

.field mTempRect:Landroid/graphics/Rect;

.field mUseCoutomView:Z

.field private final mUseDocking:Z

.field private mVibrator:Landroid/os/SystemVibrator;

.field private mWindowManager:Landroid/view/WindowManager;

.field mWindowMode:I

.field private mwm:Landroid/sec/multiwindow/impl/MultiWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;IILcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V
    .registers 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "start"    # Landroid/graphics/Point;
    .param p4, "delta"    # Landroid/graphics/Point;
    .param p5, "mode"    # I
    .param p6, "paddingWidth"    # I
    .param p7, "mwEvent"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    .prologue
    .line 148
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 50
    const-string v7, "GuideRelayoutWindow"

    iput-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->TAG:Ljava/lang/String;

    .line 52
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mContext:Landroid/content/Context;

    .line 78
    const/16 v7, 0x14

    iput v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->MAX_TASKS:I

    .line 80
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInnerView:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;

    .line 81
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mOriginRect:Landroid/graphics/Rect;

    .line 82
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    .line 83
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    .line 84
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mBackground:Landroid/graphics/NinePatch;

    .line 85
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinBackground:Landroid/graphics/NinePatch;

    .line 87
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mBmp:Landroid/graphics/Bitmap;

    .line 88
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mResizeSymbolOrangeBmp:Landroid/graphics/Bitmap;

    .line 89
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mResizeSymbolRedBmp:Landroid/graphics/Bitmap;

    .line 91
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mLeftArrowOrangeBmp:Landroid/graphics/Bitmap;

    .line 92
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mRightArrowOrangeBmp:Landroid/graphics/Bitmap;

    .line 93
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mLeftArrowRedBmp:Landroid/graphics/Bitmap;

    .line 94
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mRightArrowRedBmp:Landroid/graphics/Bitmap;

    .line 96
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mStatusBarHeight:I

    .line 97
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mFreestyleStatusBarMargin_H:I

    .line 103
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMaxSize:Landroid/graphics/Point;

    .line 105
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mDownPositionX:I

    .line 106
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mDownPositionY:I

    .line 108
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMode:I

    .line 109
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinWidth:I

    .line 110
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinHeight:I

    .line 111
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mCurWidth:I

    .line 112
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mCurHeight:I

    .line 114
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mFixedRatio:D

    .line 116
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mIsDrag:Z

    .line 118
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mIsFixedRatio:Z

    .line 119
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mIsFixedSize:Z

    .line 120
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mIsFreestyleOnly:Z

    .line 121
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mIsMinimized:Z

    .line 122
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mUseCoutomView:Z

    .line 124
    const/4 v7, 0x1

    iput v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMultiWindowState:I

    .line 125
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPreDockSide:I

    .line 126
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I

    .line 129
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mwm:Landroid/sec/multiwindow/impl/MultiWindowManager;

    .line 130
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mGuideDockingMargin:I

    .line 131
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mGuideDockingMarginFinger:I

    .line 136
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mWindowMode:I

    .line 137
    const/16 v7, 0x26

    new-array v7, v7, [B

    fill-array-data v7, :array_2b4

    iput-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mIvt:[B

    .line 149
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mContext:Landroid/content/Context;

    move-object v7, p1

    .line 150
    check-cast v7, Landroid/app/Activity;

    iput-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mActivity:Landroid/app/Activity;

    .line 151
    const-string v7, "activity"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager;

    iput-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mActivityManager:Landroid/app/ActivityManager;

    .line 152
    const-string v7, "window"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    iput-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 154
    new-instance v7, Landroid/graphics/Point;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMaxSize:Landroid/graphics/Point;

    .line 156
    move/from16 v0, p6

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPaddingWidth:I

    .line 159
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMaxSize:Landroid/graphics/Point;

    invoke-virtual {v7, v8}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 161
    const-string v7, "multiwindow"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/sec/multiwindow/impl/MultiWindowManager;

    iput-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mwm:Landroid/sec/multiwindow/impl/MultiWindowManager;

    .line 162
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mwm:Landroid/sec/multiwindow/impl/MultiWindowManager;

    if-eqz v7, :cond_d4

    .line 163
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mwm:Landroid/sec/multiwindow/impl/MultiWindowManager;

    invoke-virtual {v7}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getArrangeState()I

    move-result v7

    iput v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMultiWindowState:I

    .line 166
    :cond_d4
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindowMode()I

    move-result v7

    iput v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mWindowMode:I

    .line 167
    iget v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mWindowMode:I

    invoke-static {v7}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v6

    .line 169
    .local v6, "windowOption":I
    const/high16 v7, 0x200000

    and-int/2addr v7, v6

    if-eqz v7, :cond_128

    const/4 v7, 0x1

    :goto_e8
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mIsMinimized:Z

    .line 170
    const-string v7, "fixedRatio"

    move-object/from16 v0, p7

    invoke-virtual {v0, v7}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasApplicationStyle(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mIsFixedRatio:Z

    .line 171
    const-string v7, "fixedSize"

    move-object/from16 v0, p7

    invoke-virtual {v0, v7}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasApplicationStyle(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mIsFixedSize:Z

    .line 172
    const-string v7, "freestyleOnly"

    move-object/from16 v0, p7

    invoke-virtual {v0, v7}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasApplicationStyle(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mIsFreestyleOnly:Z

    .line 173
    invoke-virtual/range {p7 .. p7}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasCustomViewForMoveWindow()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mUseCoutomView:Z

    .line 175
    invoke-static {p1}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isSupportFreeStyleDocking(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_12a

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mIsFreestyleOnly:Z

    if-nez v7, :cond_12a

    const/4 v7, 0x1

    :goto_119
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mUseDocking:Z

    .line 177
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindowInfo()Landroid/os/Bundle;

    move-result-object v4

    .line 179
    .local v4, "winInfo":Landroid/os/Bundle;
    invoke-virtual {v4}, Landroid/os/Bundle;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_12c

    .line 249
    :goto_127
    return-void

    .line 169
    .end local v4    # "winInfo":Landroid/os/Bundle;
    :cond_128
    const/4 v7, 0x0

    goto :goto_e8

    .line 175
    :cond_12a
    const/4 v7, 0x0

    goto :goto_119

    .line 182
    .restart local v4    # "winInfo":Landroid/os/Bundle;
    :cond_12c
    const-string v7, "android.intent.extra.WINDOW_MINIMUM_SIZE"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 184
    .local v1, "minimumSize":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    iput v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinWidth:I

    .line 185
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    iput v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinHeight:I

    .line 186
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v7

    iput v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mCurWidth:I

    .line 187
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v7

    iput v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mCurHeight:I

    .line 188
    iget v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mCurWidth:I

    int-to-double v7, v7

    iget v9, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mCurHeight:I

    int-to-double v9, v9

    div-double/2addr v7, v9

    iput-wide v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mFixedRatio:D

    .line 190
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 191
    .local v5, "window":Landroid/view/Window;
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    const/high16 v8, 0x1030000

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 192
    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Landroid/view/Window;->clearFlags(I)V

    .line 193
    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v5, v7}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 195
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x105000c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mFreestyleStatusBarMargin_H:I

    .line 196
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->getGlobalSystemUiVisibility()I

    move-result v7

    if-nez v7, :cond_2b0

    iget v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mFreestyleStatusBarMargin_H:I

    :goto_183
    iput v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mStatusBarHeight:I

    .line 198
    invoke-virtual {p0, p2}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->setApplicationRect(Landroid/graphics/Rect;)V

    .line 199
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->setNinePatchImg(Landroid/content/Context;)V

    .line 201
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 202
    .local v3, "r":Landroid/content/res/Resources;
    const v7, 0x10806ed

    invoke-static {v3, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mResizeSymbolOrangeBmp:Landroid/graphics/Bitmap;

    .line 203
    const v7, 0x10806ee

    invoke-static {v3, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mResizeSymbolRedBmp:Landroid/graphics/Bitmap;

    .line 204
    const v7, 0x10806e9

    invoke-static {v3, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mLeftArrowOrangeBmp:Landroid/graphics/Bitmap;

    .line 205
    const v7, 0x10806eb

    invoke-static {v3, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mRightArrowOrangeBmp:Landroid/graphics/Bitmap;

    .line 206
    const v7, 0x10806ea

    invoke-static {v3, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mLeftArrowRedBmp:Landroid/graphics/Bitmap;

    .line 207
    const v7, 0x10806ec

    invoke-static {v3, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mRightArrowRedBmp:Landroid/graphics/Bitmap;

    .line 209
    const v7, 0x1050104

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mGuideDockingMargin:I

    .line 210
    const v7, 0x1050105

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mGuideDockingMarginFinger:I

    .line 212
    const-string v7, "vibrator"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/SystemVibrator;

    iput-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mVibrator:Landroid/os/SystemVibrator;

    .line 214
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->requestWindowFeature(I)Z

    .line 216
    new-instance v7, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;

    invoke-direct {v7, p0, p1, p0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;-><init>(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;Landroid/content/Context;Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInnerView:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;

    .line 218
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInnerView:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;

    iget v8, p3, Landroid/graphics/Point;->x:I

    # setter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosX:I
    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->access$002(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;I)I

    .line 219
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInnerView:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;

    iget v8, p3, Landroid/graphics/Point;->y:I

    # setter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosY:I
    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->access$102(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;I)I

    .line 221
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInnerView:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;

    move-object/from16 v0, p4

    iget v8, v0, Landroid/graphics/Point;->x:I

    # setter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mDeltaX:I
    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->access$202(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;I)I

    .line 222
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInnerView:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;

    move-object/from16 v0, p4

    iget v8, v0, Landroid/graphics/Point;->y:I

    # setter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mDeltaY:I
    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->access$302(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;I)I

    .line 224
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInnerView:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;

    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInnerView:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;

    iget v9, p3, Landroid/graphics/Point;->x:I

    iget v10, p3, Landroid/graphics/Point;->y:I

    # invokes: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->calculateGesture(II)I
    invoke-static {v8, v9, v10}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->access$500(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;II)I

    move-result v8

    # setter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I
    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->access$402(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;I)I

    .line 225
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInnerView:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    # setter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mCurrentOrientation:I
    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->access$602(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;I)I

    .line 226
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInnerView:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;

    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInnerView:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;

    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInnerView:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosX:I
    invoke-static {v10}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->access$000(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInnerView:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosY:I
    invoke-static {v11}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->access$100(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;)I

    move-result v11

    add-int/2addr v10, v11

    # invokes: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->calculateDockSide(II)I
    invoke-static {v8, v9, v10}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->access$800(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;II)I

    move-result v8

    # setter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mCurrentSide:I
    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->access$702(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;I)I

    .line 228
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInnerView:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMaxSize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    iget-object v10, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMaxSize:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    invoke-direct {v8, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 234
    .local v2, "p":Landroid/view/WindowManager$LayoutParams;
    iget v7, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v7, v7, 0x100

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 235
    iget v7, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v7, v7, 0x8

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 236
    iget v7, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v7, v7, 0x10

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 238
    iget v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mWindowMode:I

    and-int/lit16 v7, v7, 0x800

    if-eqz v7, :cond_2a3

    .line 239
    const/high16 v7, 0x3f800000

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->hScale:F

    .line 240
    const/high16 v7, 0x3f800000

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->vScale:F

    .line 242
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMaxSize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    const/high16 v8, 0x3f000000

    mul-float/2addr v7, v8

    const/high16 v8, 0x3f000000

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinWidth:I

    .line 243
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMaxSize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    const/high16 v8, 0x3f000000

    mul-float/2addr v7, v8

    const/high16 v8, 0x3f000000

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinHeight:I

    .line 245
    :cond_2a3
    invoke-virtual {v5, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 247
    move/from16 v0, p5

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->setMode(I)V

    .line 248
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->show()V

    goto/16 :goto_127

    .line 196
    .end local v2    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v3    # "r":Landroid/content/res/Resources;
    :cond_2b0
    const/4 v7, 0x0

    goto/16 :goto_183

    .line 137
    nop

    :array_2b4
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
        0xat
        0x0t
        0x14t
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
        0x0t
        0x0t
        0x4dt
        0x0t
        0x61t
        0x0t
        0x67t
        0x0t
        0x53t
        0x0t
        0x77t
        0x0t
        0x65t
        0x0t
        0x65t
        0x0t
        0x70t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    .prologue
    .line 48
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mUseDocking:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    .prologue
    .line 48
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mStatusBarHeight:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/graphics/Point;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMaxSize:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;Landroid/graphics/Rect;Landroid/graphics/Point;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;
    .param p1, "x1"    # Landroid/graphics/Rect;
    .param p2, "x2"    # Landroid/graphics/Point;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->reviseWindowPosition(Landroid/graphics/Rect;Landroid/graphics/Point;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    .prologue
    .line 48
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPaddingWidth:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    .prologue
    .line 48
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mFreestyleStatusBarMargin_H:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    .prologue
    .line 48
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPreDockSide:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPreDockSide:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    .prologue
    .line 48
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMultiWindowState:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    .prologue
    .line 48
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mGuideDockingMargin:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    .prologue
    .line 48
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mGuideDockingMarginFinger:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/sec/multiwindow/impl/MultiWindowManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mwm:Landroid/sec/multiwindow/impl/MultiWindowManager;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)[B
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mIvt:[B

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/os/SystemVibrator;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mVibrator:Landroid/os/SystemVibrator;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/view/WindowManager$LayoutParams;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;
    .param p1, "x1"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    return-object p1
.end method

.method private createNinePatch(Landroid/graphics/Bitmap;Landroid/content/res/Resources;I)Landroid/graphics/NinePatch;
    .registers 7
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "resId"    # I

    .prologue
    .line 272
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 274
    invoke-static {p2, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 275
    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 277
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
    .line 1137
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "windowMode"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1138
    .local v0, "windowModeField":Ljava/lang/reflect/Field;
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_d
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_d} :catch_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_d} :catch_12
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_d} :catch_f

    move-result v1

    .line 1143
    .end local v0    # "windowModeField":Ljava/lang/reflect/Field;
    :goto_e
    return v1

    .line 1141
    :catch_f
    move-exception v1

    .line 1143
    :goto_10
    const/4 v1, 0x0

    goto :goto_e

    .line 1140
    :catch_12
    move-exception v1

    goto :goto_10

    .line 1139
    :catch_14
    move-exception v1

    goto :goto_10
.end method

.method private recycleBitmap(Landroid/graphics/Bitmap;)V
    .registers 2
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 253
    if-eqz p1, :cond_6

    .line 255
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 256
    const/4 p1, 0x0

    .line 259
    :cond_6
    return-void
.end method

.method private reviseWindowPosition(Landroid/graphics/Rect;Landroid/graphics/Point;)V
    .registers 8
    .param p1, "windowRect"    # Landroid/graphics/Rect;
    .param p2, "maxSize"    # Landroid/graphics/Point;

    .prologue
    .line 1110
    const/16 v0, 0x12c

    .line 1111
    .local v0, "boundaryX":I
    const/16 v1, 0xc8

    .line 1113
    .local v1, "boundaryY":I
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowMode()I

    move-result v2

    .line 1114
    .local v2, "windowMode":I
    invoke-static {v2}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isMinimized(I)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1115
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 1116
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 1119
    :cond_18
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v0

    if-le v3, v4, :cond_37

    .line 1120
    iget v3, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v0

    iget v4, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1126
    :cond_27
    :goto_27
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v1

    if-le v3, v4, :cond_47

    .line 1127
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v1

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1132
    :cond_36
    :goto_36
    return-void

    .line 1122
    :cond_37
    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-ge v3, v0, :cond_27

    .line 1123
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int v3, v0, v3

    iget v4, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_27

    .line 1129
    :cond_47
    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-gez v3, :cond_36

    .line 1130
    iget v3, p1, Landroid/graphics/Rect;->left:I

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_36
.end method

.method private setNinePatchImg(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 263
    const/4 v0, 0x0

    .line 264
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10805fe

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->createNinePatch(Landroid/graphics/Bitmap;Landroid/content/res/Resources;I)Landroid/graphics/NinePatch;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mBackground:Landroid/graphics/NinePatch;

    .line 265
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10805fd

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->createNinePatch(Landroid/graphics/Bitmap;Landroid/content/res/Resources;I)Landroid/graphics/NinePatch;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinBackground:Landroid/graphics/NinePatch;

    .line 266
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 268
    return-void
.end method


# virtual methods
.method public dismissGuideRelayoutWindow()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 301
    const-string v0, "GuideRelayoutWindow"

    const-string v1, "dismissGuideRelayoutWindow()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iput v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMode:I

    .line 303
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mIsDrag:Z

    .line 304
    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    .line 305
    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    .line 307
    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    .line 309
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->dismiss()V

    .line 310
    return-void
.end method

.method public getGlobalSystemUiVisibility()I
    .registers 6

    .prologue
    .line 1147
    const/4 v1, 0x0

    .line 1149
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

    .line 1150
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

    .line 1156
    .end local v0    # "m":Ljava/lang/reflect/Method;
    :goto_1f
    return v1

    .line 1154
    :catch_20
    move-exception v2

    goto :goto_1f

    .line 1153
    :catch_22
    move-exception v2

    goto :goto_1f

    .line 1152
    :catch_24
    move-exception v2

    goto :goto_1f

    .line 1151
    :catch_26
    move-exception v2

    goto :goto_1f
.end method

.method public getMode()I
    .registers 2

    .prologue
    .line 285
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMode:I

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 324
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMode:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_d

    .line 326
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInnerView:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 330
    :goto_c
    return v0

    .line 329
    :cond_d
    const-string v0, "GuideRelayoutWindow"

    const-string v1, "onTouchEvent() consume is false"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public setApplicationRect(Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 289
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowMode()I

    move-result v0

    .line 290
    .local v0, "windowMode":I
    if-eqz p1, :cond_37

    .line 291
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mOriginRect:Landroid/graphics/Rect;

    .line 292
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mOriginRect:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    .line 293
    invoke-static {v0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isCascadeWindow(I)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 294
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mStatusBarHeight:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 296
    :cond_2e
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    .line 298
    :cond_37
    return-void
.end method

.method public setCaptureImage(Landroid/graphics/Bitmap;)V
    .registers 2
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 320
    return-void
.end method

.method public setMode(I)V
    .registers 2
    .param p1, "mode"    # I

    .prologue
    .line 282
    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMode:I

    .line 283
    return-void
.end method

.method public setMovePosition(II)V
    .registers 6
    .param p1, "tx"    # I
    .param p2, "ty"    # I

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 315
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInnerView:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->invalidate()V

    .line 317
    return-void
.end method
