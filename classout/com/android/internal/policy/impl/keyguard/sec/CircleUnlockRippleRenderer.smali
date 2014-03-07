.class public Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;
.super Ljava/lang/Object;
.source "CircleUnlockRippleRenderer.java"

# interfaces
.implements Landroid/hardware/scontext/SContextListener;
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer$SoundPoolThread;
    }
.end annotation


# static fields
.field private static final DEFAULT_WALLPAPER_IMAGE_PATH:Ljava/lang/String; = "/system/wallpaper/lockscreen_default_wallpaper.jpg"

.field private static final DEFAULT_WALLPAPER_IMAGE_PATH_MULTI_CSC:Ljava/lang/String; = "/system/csc_contents/lockscreen_default_wallpaper.jpg"

.field private static final DEFAULT_WALLPAPER_IMAGE_PATH_MULTI_CSC_PNG:Ljava/lang/String; = "/system/csc_contents/lockscreen_default_wallpaper.png"

.field private static final DEFAULT_WALLPAPER_IMAGE_PATH_PNG:Ljava/lang/String; = "/system/wallpaper/lockscreen_default_wallpaper.png"

.field private static final INK_DISABLE:I = 0x0

.field private static final LANDSCAPE_WALLPAPER_IMAGE_PATH:Ljava/lang/String; = "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper_land.jpg"

.field private static final PORTRAIT_WALLPAPER_IMAGE_PATH:Ljava/lang/String; = "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper_ripple.jpg"


# instance fields
.field BGResId:I

.field private CPU_CLOCK_NUM:I

.field private final CPU_CLOK_CONTROL:I

.field private final DBG:Z

.field private GPU_FREQUNCY_NUM:I

.field private final GPU_FREQ_CONTROL:I

.field private HDMI_VIEW_HEIGHT_FOR_P4_NOTE_10_1:I

.field private HDMI_WIDOW_HEIGHT_FOR_P4_NOTE_10_1:I

.field private HOVER_EXPONENT_RATIO_MAX:F

.field private HOVER_EXPONENT_RATIO_MIN:F

.field private HOVER_FRESENL_MAX:F

.field private HOVER_FRESENL_MIN:F

.field private HOVER_INTENSITY_MAX:F

.field private HOVER_SPECULAR_RATIO_MAX:F

.field private HOVER_SPECULAR_RATIO_MIN:F

.field private MESH_SIZE_HEIGHT:I

.field private MESH_SIZE_WIDTH:I

.field private NUM_DETAILS_HEIGHT:I

.field private NUM_DETAILS_WIDTH:I

.field private final REDUCTION_RATE_NORMAL:F

.field private final REDUCTION_RATE_RAIN:F

.field private final REDUCTION_RATE_WAVE:F

.field RIPPLE_DRAG_THRESHOLD:D

.field private final RIPPLE_WAIT_TIME:J

.field final SOUND_ID_DOWN:I

.field final SOUND_ID_UP:I

.field private SURFACE_DETAILS_HEIGHT:I

.field private SURFACE_DETAILS_WIDTH:I

.field private final TAG:Ljava/lang/String;

.field private final TOUCH_EXPONENT:F

.field private final TOUCH_FRESENL:F

.field private final TOUCH_SPECULAR:F

.field private VCOUNT:I

.field XRatioAdjustLandscape:F

.field XRatioAdjustPortrait:F

.field XRatioForLandscape:F

.field XRatioForPortrait:F

.field YRatioForLandscape:F

.field YRatioForPortrait:F

.field alphaRatio1:F

.field alphaRatio2:F

.field bitmapBG:Landroid/graphics/Bitmap;

.field bitmapGravityLeft:Landroid/graphics/Bitmap;

.field bitmapGravityRight:Landroid/graphics/Bitmap;

.field bitmapWater:Landroid/graphics/Bitmap;

.field private calledIsScreenTurnedOn:Z

.field cpuMaxClockBooster:Landroid/os/DVFSHelper;

.field private defaultX:F

.field private defaultY:F

.field private diffPressTime:J

.field private downX:F

.field private downY:F

.field private drawCount:I

.field glX:F

.field glY:F

.field private gpuHeights:[F

.field gpuMaxFreqBooster:Landroid/os/DVFSHelper;

.field private gravityEffectType:I

.field private hasSystemNavBar:Z

.field private heights:[F

.field private heightsSub1:[F

.field private heightsSub2:[F

.field private hoverPlus_Frenel:F

.field private hoverPlus_Specular:F

.field private hoverPlus_exponent:F

.field private indices:[S

.field private inkColorFromSetting:[[F

.field intensityForLandscape:F

.field intensityForPortrait:F

.field intensityForRipple:F

.field private isFirstTouched:Z

.field private isInkEnable:Z

.field private isMakedASpenToucdUp:Z

.field private isRestrictCPUClock:Z

.field private isRestrictGPUFreq:Z

.field private isSystemSoundChecked:Z

.field isTouched:Z

.field private isUseLCD:Z

.field private is_JBP_Upgrade:Z

.field leftDirectionTilt:F

.field mBgChangeCheckArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mBitmapRatio:F

.field private mBottomWaveReductionRate:F

.field private mBottomWaveTime:J

.field private mBottomWaveVelocity:F

.field private mContext:Landroid/content/Context;

.field private mDefaultRunnable:Ljava/lang/Runnable;

.field private mDrawEffectFrameCnt:I

.field private final mDrawTickTerm:I

.field private mEnableArcMotion:Z

.field private mExponentRatio:F

.field private mFresnelRatio:F

.field private mGravityEffectFrameCnt:I

.field private final mGravityHeightWeight:F

.field private mHoverEnabled:Z

.field private mHoverIntensity:F

.field private mInkCustomBlue:F

.field private mInkCustomGreen:F

.field private mInkCustomRed:F

.field private mInkEffectColor:I

.field private mLandscape:Z

.field private mLightHeight:F

.field private mLongPressRunnable:Ljava/lang/Runnable;

.field mParent:Landroid/view/View;

.field private mPreviousRippleTime:J

.field private mRDownId:I

.field private mRUpId:I

.field private mReductionRate:F

.field private mReductionRateSub:F

.field private final mSContextManager:Landroid/hardware/scontext/SContextManager;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSelectEffect:I

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSpecularRatio:F

.field private mSubWaveTime:J

.field private mWallpaperPath:Ljava/lang/String;

.field private mWaveEnable:Z

.field private mWaveVelocity:F

.field private max:I

.field private mouseInputCount:I

.field private mouseX:F

.field private mouseY:F

.field private moveCount:I

.field private prevPressTime:J

.field private prevWidth_sufaceChanged:I

.field private proj:[F

.field reflectionRatio:F

.field refractiveIndex:F

.field rightDirectionTilt:F

.field private rippleDistance:I

.field rippleDragThreshold:D

.field private sleepTime:J

.field private soundNum:I

.field private soundTime:I

.field private sounds:[I

.field spanXForLandscape:I

.field spanXForPortrait:I

.field spanYForLandscape:I

.field spanYForPortrait:I

.field supportedCPUClockTable:[I

.field supportedGPUFreqTable:[I

.field textures0:[I

.field textures1:[I

.field private textureu:[F

.field tmx:F

.field tmy:F

.field translateXForLandscape:F

.field translateXForPortrait:F

.field translateYForLandscape:F

.field translateYForPortrait:F

.field translateZForLandscape:F

.field translateZForPortrait:F

.field unitCellHeight:F

.field unitCellWidth:F

.field private velocity:[F

.field private velocitySub1:[F

.field private velocitySub2:[F

.field private vertices:[F

.field private view:[F

.field windowHeight:I

.field windowWidth:I

.field private world:[F

.field private wvp:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/16 v11, 0x10

    const/4 v10, 0x1

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 390
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->DBG:Z

    .line 103
    const-string v4, "CircleUnlockRippleRenderer"

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->TAG:Ljava/lang/String;

    .line 106
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    .line 107
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    .line 109
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    .line 110
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    .line 112
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    .line 113
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    .line 115
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->max:I

    .line 116
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    .line 118
    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->unitCellWidth:F

    .line 119
    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->unitCellHeight:F

    .line 121
    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heights:[F

    .line 122
    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->velocity:[F

    .line 124
    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub1:[F

    .line 125
    new-array v4, v8, [F

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub1:[F

    .line 127
    new-array v4, v8, [F

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub2:[F

    .line 128
    new-array v4, v8, [F

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub2:[F

    .line 131
    new-array v4, v8, [F

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->vertices:[F

    .line 132
    new-array v4, v8, [F

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    .line 133
    new-array v4, v8, [S

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->indices:[S

    .line 135
    new-array v4, v8, [I

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->textures0:[I

    .line 136
    new-array v4, v8, [I

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->textures1:[I

    .line 139
    new-array v4, v11, [F

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->view:[F

    .line 140
    new-array v4, v11, [F

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->proj:[F

    .line 141
    new-array v4, v11, [F

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->world:[F

    .line 142
    new-array v4, v11, [F

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    .line 144
    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    .line 146
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    .line 147
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    .line 149
    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseX:F

    .line 150
    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseY:F

    .line 153
    const/high16 v4, 0x3f000000

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mWaveVelocity:F

    .line 154
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mWaveEnable:Z

    .line 157
    const v4, 0x3f70a3d7

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->REDUCTION_RATE_NORMAL:F

    .line 158
    const v4, 0x3f75c28f

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->REDUCTION_RATE_RAIN:F

    .line 159
    const v4, 0x3f7d70a4

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->REDUCTION_RATE_WAVE:F

    .line 162
    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mBitmapRatio:F

    .line 165
    const v4, 0x3dcccccd

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->TOUCH_FRESENL:F

    .line 166
    const/high16 v4, 0x3f000000

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->TOUCH_SPECULAR:F

    .line 167
    const/high16 v4, 0x41a00000

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->TOUCH_EXPONENT:F

    .line 169
    const v4, 0x3dcccccd

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mFresnelRatio:F

    .line 170
    const/high16 v4, 0x3f000000

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSpecularRatio:F

    .line 171
    const/high16 v4, 0x41a00000

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mExponentRatio:F

    .line 174
    const v4, 0x3dcccccd

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_FRESENL_MIN:F

    .line 175
    const/high16 v4, 0x3f000000

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_SPECULAR_RATIO_MIN:F

    .line 176
    const/high16 v4, 0x41a00000

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_EXPONENT_RATIO_MIN:F

    .line 178
    const/high16 v4, 0x3f800000

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_FRESENL_MAX:F

    .line 179
    const/high16 v4, 0x41200000

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_SPECULAR_RATIO_MAX:F

    .line 180
    const/high16 v4, 0x41a00000

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_EXPONENT_RATIO_MAX:F

    .line 181
    const v4, 0x3ccccccd

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_INTENSITY_MAX:F

    .line 182
    const v4, 0x3c23d70a

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->hoverPlus_Frenel:F

    .line 183
    const v4, 0x3dcccccd

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->hoverPlus_Specular:F

    .line 184
    const v4, 0x3dcccccd

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->hoverPlus_exponent:F

    .line 185
    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_INTENSITY_MAX:F

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mHoverIntensity:F

    .line 186
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mHoverEnabled:Z

    .line 187
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mPreviousRippleTime:J

    .line 188
    const-wide/16 v6, 0x640

    iput-wide v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->RIPPLE_WAIT_TIME:J

    .line 191
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mLandscape:Z

    .line 194
    const v4, 0x3f70a3d7

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mReductionRate:F

    .line 195
    const v4, 0x3f7d70a4

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mReductionRateSub:F

    .line 196
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSubWaveTime:J

    .line 199
    const/high16 v4, 0x3fc00000

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mLightHeight:F

    .line 201
    const v4, 0x3f400000

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->refractiveIndex:F

    .line 202
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->reflectionRatio:F

    .line 203
    const/high16 v4, 0x3f800000

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->alphaRatio1:F

    .line 204
    const/high16 v4, 0x3f800000

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->alphaRatio2:F

    .line 209
    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapBG:Landroid/graphics/Bitmap;

    .line 210
    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    .line 212
    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->tmx:F

    .line 213
    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->tmy:F

    .line 215
    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    .line 216
    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    .line 224
    const/high16 v4, 0x3f000000

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->intensityForLandscape:F

    .line 225
    const/high16 v4, 0x3f800000

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->intensityForPortrait:F

    .line 229
    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateXForLandscape:F

    .line 230
    const/high16 v4, -0x80000000

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateXForPortrait:F

    .line 233
    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateYForLandscape:F

    .line 234
    const/high16 v4, -0x80000000

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateYForPortrait:F

    .line 237
    const/high16 v4, -0x3dd00000

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateZForPortrait:F

    .line 238
    const/high16 v4, -0x3e480000

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateZForLandscape:F

    .line 241
    iput v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    .line 242
    iput v11, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    .line 243
    iput v11, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    .line 244
    iput v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    .line 247
    const/high16 v4, 0x42340000

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    .line 248
    const/high16 v4, 0x41c80000

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    .line 249
    const/high16 v4, 0x41c80000

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    .line 250
    const/high16 v4, 0x42380000

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    .line 251
    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    .line 252
    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    .line 257
    const/high16 v4, 0x3f800000

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->intensityForRipple:F

    .line 258
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    .line 259
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    .line 262
    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->downX:F

    .line 263
    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->downY:F

    .line 264
    const-wide v6, 0x4062c00000000000L

    iput-wide v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->RIPPLE_DRAG_THRESHOLD:D

    .line 265
    iget-wide v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->RIPPLE_DRAG_THRESHOLD:D

    iput-wide v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->rippleDragThreshold:D

    .line 266
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->rippleDistance:I

    .line 267
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    .line 270
    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    .line 271
    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->sounds:[I

    .line 272
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->diffPressTime:J

    .line 273
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->prevPressTime:J

    .line 274
    const/4 v4, 0x5

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->soundNum:I

    .line 275
    const/16 v4, 0xa

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->soundTime:I

    .line 276
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SOUND_ID_DOWN:I

    .line 277
    iput v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SOUND_ID_UP:I

    .line 278
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mRDownId:I

    .line 279
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mRUpId:I

    .line 280
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->drawCount:I

    .line 281
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->moveCount:I

    .line 282
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    .line 283
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->hasSystemNavBar:Z

    .line 287
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isFirstTouched:Z

    .line 288
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->calledIsScreenTurnedOn:Z

    .line 291
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isMakedASpenToucdUp:Z

    .line 293
    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->defaultX:F

    .line 294
    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->defaultY:F

    .line 308
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->is_JBP_Upgrade:Z

    .line 309
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isInkEnable:Z

    .line 310
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isUseLCD:Z

    move-object v4, v5

    .line 315
    check-cast v4, [[F

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    .line 316
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    .line 317
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isTouched:Z

    .line 322
    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mBgChangeCheckArray:Ljava/util/ArrayList;

    .line 327
    const/16 v4, 0x2f0

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->HDMI_WIDOW_HEIGHT_FOR_P4_NOTE_10_1:I

    .line 328
    const/16 v4, 0x2d0

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->HDMI_VIEW_HEIGHT_FOR_P4_NOTE_10_1:I

    .line 335
    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapGravityRight:Landroid/graphics/Bitmap;

    .line 336
    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapGravityLeft:Landroid/graphics/Bitmap;

    .line 338
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mEnableArcMotion:Z

    .line 343
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSelectEffect:I

    .line 344
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mGravityEffectFrameCnt:I

    .line 348
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gravityEffectType:I

    .line 350
    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->rightDirectionTilt:F

    .line 351
    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->leftDirectionTilt:F

    .line 353
    new-array v4, v8, [F

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->textureu:[F

    .line 354
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mDrawEffectFrameCnt:I

    .line 355
    const/16 v4, 0x1e

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mDrawTickTerm:I

    .line 356
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mBottomWaveTime:J

    .line 358
    const v4, 0x3e99999a

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mBottomWaveVelocity:F

    .line 359
    const/high16 v4, 0x40400000

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mGravityHeightWeight:F

    .line 361
    const v4, 0x3f7d70a4

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mBottomWaveReductionRate:F

    .line 364
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->prevWidth_sufaceChanged:I

    .line 365
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->sleepTime:J

    .line 368
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->CPU_CLOCK_NUM:I

    .line 369
    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    .line 370
    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->supportedCPUClockTable:[I

    .line 371
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isRestrictCPUClock:Z

    .line 374
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->GPU_FREQUNCY_NUM:I

    .line 375
    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    .line 376
    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->supportedGPUFreqTable:[I

    .line 377
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isRestrictGPUFreq:Z

    .line 379
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->CPU_CLOK_CONTROL:I

    .line 380
    iput v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->GPU_FREQ_CONTROL:I

    .line 392
    const-string v4, "CircleUnlockRippleRenderer"

    const-string v5, "CircleUnlockRippleRenderer Constructor"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :try_start_1e9
    const-string v4, "window"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    .line 397
    .local v3, "wm":Landroid/view/IWindowManager;
    invoke-interface {v3}, Landroid/view/IWindowManager;->hasSystemNavBar()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->hasSystemNavBar:Z
    :try_end_1f9
    .catch Landroid/os/RemoteException; {:try_start_1e9 .. :try_end_1f9} :catch_361

    .line 402
    .end local v3    # "wm":Landroid/view/IWindowManager;
    :goto_1f9
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    .line 404
    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    .line 406
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1110069

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->is_JBP_Upgrade:Z

    .line 407
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x111006a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isInkEnable:Z

    .line 408
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x111006b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isUseLCD:Z

    .line 410
    const-string v4, "CircleUnlockRippleRenderer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "is_JBP_Upgrade = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->is_JBP_Upgrade:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const-string v4, "CircleUnlockRippleRenderer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isInkEnable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isInkEnable:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const-string v4, "CircleUnlockRippleRenderer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isUseLCD = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isUseLCD:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isUseLCD:Z

    if-eqz v4, :cond_36b

    .line 416
    sget-object v4, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->inkColorFromSettingForLCD:[[F

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    .line 424
    :goto_280
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x111006e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isRestrictCPUClock:Z

    .line 425
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e005b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->CPU_CLOCK_NUM:I

    .line 426
    const-string v4, "CircleUnlockRippleRenderer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isRestrictCPUClock = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isRestrictCPUClock:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    const-string v4, "CircleUnlockRippleRenderer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CPU_CLOCK_NUM = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->CPU_CLOCK_NUM:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x111006f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isRestrictGPUFreq:Z

    .line 431
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e005c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->GPU_FREQUNCY_NUM:I

    .line 432
    const-string v4, "CircleUnlockRippleRenderer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isRestrictGPUFreq = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isRestrictGPUFreq:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const-string v4, "CircleUnlockRippleRenderer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GPU_FREQUNCY_NUM = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->GPU_FREQUNCY_NUM:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 436
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 437
    .local v2, "mWindowManager":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 438
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    .line 439
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    .line 440
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setModeleConfiguration()V

    .line 442
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->initWaters()V

    .line 444
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mBgChangeCheckArray:Ljava/util/ArrayList;

    .line 446
    invoke-direct {p0, v10}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setBackground(Z)V

    .line 448
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    const-string v5, "scontext"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/scontext/SContextManager;

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 449
    return-void

    .line 398
    .end local v0    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v2    # "mWindowManager":Landroid/view/WindowManager;
    :catch_361
    move-exception v1

    .line 399
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v4, "Navigation"

    const-string v5, "RemoteException Occured"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f9

    .line 420
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_36b
    sget-object v4, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->inkColorFromSettingForLED:[[F

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    goto/16 :goto_280
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;FFFZ)V
    .registers 5
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F
    .param p4, "x4"    # Z

    .prologue
    .line 99
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->ripple(FFFZ)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;

    .prologue
    .line 99
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;

    .prologue
    .line 99
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;

    .prologue
    .line 99
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->defaultY:F

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;
    .param p1, "x1"    # Z

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setHoverEnable(Z)V

    return-void
.end method

.method static synthetic access$1402(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setFalseDefaultEffectFlag()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;

    .prologue
    .line 99
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->soundNum:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;)Landroid/media/SoundPool;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;

    .prologue
    .line 99
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->soundTime:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isRestrictCPUClock:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isRestrictGPUFreq:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mLandscape:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;

    .prologue
    .line 99
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->defaultX:F

    return v0
.end method

.method private acquireBooster(I)V
    .registers 8
    .param p1, "type"    # I

    .prologue
    .line 2361
    const-string v2, "CircleUnlockRippleRenderer"

    const-string v3, "acquireBooster"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2363
    const/4 v0, 0x0

    .line 2364
    .local v0, "bestCpuClock":I
    const/4 v1, 0x0

    .line 2366
    .local v1, "bestGpuFreq":I
    if-nez p1, :cond_6b

    .line 2368
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    if-eqz v2, :cond_63

    .line 2370
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->supportedCPUClockTable:[I

    if-nez v2, :cond_5a

    .line 2372
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->supportedCPUClockTable:[I

    .line 2374
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->supportedCPUClockTable:[I

    if-eqz v2, :cond_5b

    .line 2376
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->supportedCPUClockTable:[I

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->CPU_CLOCK_NUM:I

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->getBestMaxFreq([II)I

    move-result v0

    .line 2377
    const-string v2, "CircleUnlockRippleRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acquire CPU, ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->supportedCPUClockTable:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2378
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    const-string v3, "CPU"

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->supportedCPUClockTable:[I

    aget v4, v4, v0

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 2379
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->acquire()V

    .line 2422
    :cond_5a
    :goto_5a
    return-void

    .line 2383
    :cond_5b
    const-string v2, "CircleUnlockRippleRenderer"

    const-string v3, "getSupportedCPUFrequency, but supportedCPUClockTable is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a

    .line 2389
    :cond_63
    const-string v2, "CircleUnlockRippleRenderer"

    const-string v3, "cpuMaxClockBooster is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a

    .line 2392
    :cond_6b
    const/4 v2, 0x1

    if-ne p1, v2, :cond_ce

    .line 2394
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    if-eqz v2, :cond_c6

    .line 2396
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->supportedGPUFreqTable:[I

    if-nez v2, :cond_5a

    .line 2398
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->supportedGPUFreqTable:[I

    .line 2400
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->supportedGPUFreqTable:[I

    if-eqz v2, :cond_be

    .line 2402
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->supportedGPUFreqTable:[I

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->GPU_FREQUNCY_NUM:I

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->getBestMaxFreq([II)I

    move-result v1

    .line 2403
    const-string v2, "CircleUnlockRippleRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acquire GPU, ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->supportedGPUFreqTable:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2404
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    const-string v3, "GPU"

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->supportedGPUFreqTable:[I

    aget v4, v4, v1

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 2405
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->acquire()V

    goto :goto_5a

    .line 2409
    :cond_be
    const-string v2, "CircleUnlockRippleRenderer"

    const-string v3, "getSupportedGPUFrequency, but supportedGPUFreqTable is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a

    .line 2415
    :cond_c6
    const-string v2, "CircleUnlockRippleRenderer"

    const-string v3, "gpuMaxFreqBooster is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a

    .line 2420
    :cond_ce
    const-string v2, "CircleUnlockRippleRenderer"

    const-string v3, "type is invalid."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a
.end method

.method private checkFingerInk()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1786
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_finger_ink"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private checkInkColor()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1786
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_ink_custom"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private checkSound()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 1531
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1532
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .line 1536
    .local v2, "result":I
    :try_start_8
    const-string v3, "lockscreen_sounds_enabled"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_8 .. :try_end_d} :catch_13

    move-result v2

    .line 1544
    :goto_e
    if-ne v2, v4, :cond_18

    .line 1545
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    .line 1549
    :goto_12
    return-void

    .line 1538
    :catch_13
    move-exception v1

    .line 1540
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_e

    .line 1547
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_18
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    goto :goto_12
.end method

.method private getBestMaxFreq([II)I
    .registers 9
    .param p1, "pArray"    # [I
    .param p2, "bestValue"    # I

    .prologue
    .line 2470
    const/4 v4, 0x0

    .line 2471
    .local v4, "value":I
    const v3, 0x7fffffff

    .line 2472
    .local v3, "prevdiff":I
    const/4 v1, 0x0

    .line 2473
    .local v1, "currdiff":I
    array-length v0, p1

    .line 2475
    .local v0, "arrayLenth":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_18

    .line 2478
    aget v5, p1, v2

    sub-int v5, p2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 2479
    if-ge v1, v3, :cond_15

    .line 2481
    move v4, v2

    .line 2482
    move v3, v1

    .line 2475
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 2486
    :cond_18
    return v4
.end method

.method private initWaters()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 1285
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "initWaters"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->vertices:[F

    .line 1288
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x6

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->indices:[S

    .line 1290
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->max:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heights:[F

    .line 1291
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->max:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->velocity:[F

    .line 1292
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->max:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub1:[F

    .line 1293
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->max:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub1:[F

    .line 1294
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->max:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub2:[F

    .line 1295
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->max:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub2:[F

    .line 1297
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    .line 1300
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->textureu:[F

    .line 1303
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->vertices:[F

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->indices:[S

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    invoke-static/range {v0 .. v6}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->initWaters([F[SIIIII)V

    .line 1308
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heights:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    .line 1309
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->velocity:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    .line 1310
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub1:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    .line 1311
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub1:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    .line 1312
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub2:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    .line 1313
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub2:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    .line 1314
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    .line 1316
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->textureu:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    .line 1317
    return-void
.end method

.method private loadBitmapIfBitmapNull()V
    .registers 3

    .prologue
    .line 1633
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapBG:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_16

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_GRAVITY:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v0, v1, :cond_4c

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapGravityRight:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapGravityLeft:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4c

    .line 1635
    :cond_16
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    if-nez v0, :cond_21

    .line 1637
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "bitmapWater == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    :cond_21
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapBG:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2c

    .line 1642
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "bitmapBG == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    :cond_2c
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_GRAVITY:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v0, v1, :cond_48

    .line 1646
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapGravityRight:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3d

    .line 1647
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "bitmapGravityRight == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    :cond_3d
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapGravityLeft:Landroid/graphics/Bitmap;

    if-nez v0, :cond_48

    .line 1651
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "bitmapGravityLeft == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    :cond_48
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setBackground(Z)V

    .line 1657
    :cond_4c
    return-void
.end method

.method private move()V
    .registers 19

    .prologue
    .line 1324
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heights:[F

    if-eqz v1, :cond_2a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->velocity:[F

    if-eqz v1, :cond_2a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub1:[F

    if-eqz v1, :cond_2a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub1:[F

    if-eqz v1, :cond_2a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub2:[F

    if-eqz v1, :cond_2a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub2:[F

    if-eqz v1, :cond_2a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    if-nez v1, :cond_32

    .line 1333
    :cond_2a
    const-string v1, "CircleUnlockRippleRenderer"

    const-string v2, "initWaters don\'t called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    :cond_31
    return-void

    .line 1338
    :cond_32
    const/4 v4, 0x1

    .line 1339
    .local v4, "xSpan":I
    const/4 v3, 0x1

    .line 1341
    .local v3, "ySpan":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mLandscape:Z

    if-eqz v1, :cond_1db

    .line 1342
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    .line 1343
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    .line 1344
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    sub-int v5, v1, v3

    .line 1345
    .local v5, "imax":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    sub-int v6, v1, v4

    .line 1353
    .local v6, "jmax":I
    :goto_4e
    const/4 v15, 0x1

    .line 1354
    .local v15, "result1":I
    const/16 v16, 0x1

    .line 1356
    .local v16, "result2":I
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_GRAVITY:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v1, v2, :cond_96

    .line 1358
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub1:[F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub1:[F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mBottomWaveReductionRate:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mBottomWaveVelocity:F

    invoke-static/range {v1 .. v11}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->move([F[FIIIIIIZFF)I

    move-result v15

    .line 1362
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub2:[F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub2:[F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mBottomWaveReductionRate:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mBottomWaveVelocity:F

    const v17, 0x3f333333

    mul-float v11, v11, v17

    invoke-static/range {v1 .. v11}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->move([F[FIIIIIIZFF)I

    move-result v16

    .line 1368
    :cond_96
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->velocity:[F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heights:[F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mReductionRate:F

    const/high16 v11, 0x3f000000

    invoke-static/range {v1 .. v11}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->move([F[FIIIIIIZFF)I

    move-result v1

    if-eqz v1, :cond_d3

    if-eqz v15, :cond_d3

    if-eqz v16, :cond_d3

    .line 1372
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->drawCount:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_d3

    .line 1374
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_WITH_INK:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    if-eq v1, v2, :cond_ca

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_INK:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v1, v2, :cond_1f1

    .line 1376
    :cond_ca
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isTouched:Z

    if-nez v1, :cond_d3

    .line 1378
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setRenderModeDirty()V

    .line 1391
    :cond_d3
    :goto_d3
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_d4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    if-ge v12, v1, :cond_31

    .line 1392
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_db
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    if-ge v14, v1, :cond_20e

    .line 1393
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v1, v14

    add-int/2addr v1, v12

    mul-int/lit8 v13, v1, 0x3

    .line 1394
    .local v13, "idx":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v2, v13, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heights:[F

    add-int/lit8 v8, v14, 0x2

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v8, v9

    add-int/2addr v8, v12

    add-int/lit8 v8, v8, 0x2

    aget v7, v7, v8

    aput v7, v1, v2

    .line 1396
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v2, v13, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heights:[F

    add-int/lit8 v8, v14, 0x2

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v8, v9

    add-int/2addr v8, v12

    add-int/lit8 v8, v8, 0x1

    aget v7, v7, v8

    aput v7, v1, v2

    .line 1398
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v2, v13, 0x2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heights:[F

    add-int/lit8 v8, v14, 0x1

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v8, v9

    add-int/2addr v8, v12

    add-int/lit8 v8, v8, 0x2

    aget v7, v7, v8

    aput v7, v1, v2

    .line 1401
    add-int/lit8 v1, v12, -0x7

    if-lez v1, :cond_1d7

    .line 1402
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v2, v13, 0x0

    aget v7, v1, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub1:[F

    add-int/lit8 v9, v14, 0x2

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v9, v10

    add-int/2addr v9, v12

    add-int/lit8 v9, v9, -0x6

    aget v8, v8, v9

    add-float/2addr v7, v8

    aput v7, v1, v2

    .line 1404
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v2, v13, 0x1

    aget v7, v1, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub1:[F

    add-int/lit8 v9, v14, 0x2

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v9, v10

    add-int/2addr v9, v12

    add-int/lit8 v9, v9, -0x7

    aget v8, v8, v9

    add-float/2addr v7, v8

    aput v7, v1, v2

    .line 1406
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v2, v13, 0x2

    aget v7, v1, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub1:[F

    add-int/lit8 v9, v14, 0x1

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v9, v10

    add-int/2addr v9, v12

    add-int/lit8 v9, v9, -0x6

    aget v8, v8, v9

    add-float/2addr v7, v8

    aput v7, v1, v2

    .line 1408
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v2, v13, 0x0

    aget v7, v1, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub2:[F

    add-int/lit8 v9, v14, 0x2

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v9, v10

    add-int/2addr v9, v12

    add-int/lit8 v9, v9, -0x6

    aget v8, v8, v9

    add-float/2addr v7, v8

    aput v7, v1, v2

    .line 1410
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v2, v13, 0x1

    aget v7, v1, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub2:[F

    add-int/lit8 v9, v14, 0x2

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v9, v10

    add-int/2addr v9, v12

    add-int/lit8 v9, v9, -0x7

    aget v8, v8, v9

    add-float/2addr v7, v8

    aput v7, v1, v2

    .line 1412
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v2, v13, 0x2

    aget v7, v1, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub2:[F

    add-int/lit8 v9, v14, 0x1

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v9, v10

    add-int/2addr v9, v12

    add-int/lit8 v9, v9, -0x6

    aget v8, v8, v9

    add-float/2addr v7, v8

    aput v7, v1, v2

    .line 1392
    :cond_1d7
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_db

    .line 1347
    .end local v5    # "imax":I
    .end local v6    # "jmax":I
    .end local v12    # "i":I
    .end local v13    # "idx":I
    .end local v14    # "j":I
    .end local v15    # "result1":I
    .end local v16    # "result2":I
    :cond_1db
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    .line 1348
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    .line 1349
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    sub-int v5, v1, v3

    .line 1350
    .restart local v5    # "imax":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    sub-int v6, v1, v4

    .restart local v6    # "jmax":I
    goto/16 :goto_4e

    .line 1380
    .restart local v15    # "result1":I
    .restart local v16    # "result2":I
    :cond_1f1
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_GRAVITY:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v1, v2, :cond_209

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSelectEffect:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_209

    .line 1382
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isTouched:Z

    if-nez v1, :cond_d3

    .line 1383
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setRenderModeDirty()V

    goto/16 :goto_d3

    .line 1386
    :cond_209
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setRenderModeDirty()V

    goto/16 :goto_d3

    .line 1391
    .restart local v12    # "i":I
    .restart local v14    # "j":I
    :cond_20e
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_d4
.end method

.method private perspectiveM([FFFFF)V
    .registers 15
    .param p1, "m"    # [F
    .param p2, "angle"    # F
    .param p3, "aspect"    # F
    .param p4, "near"    # F
    .param p5, "far"    # F

    .prologue
    const/4 v8, 0x0

    .line 1452
    const-wide/high16 v2, 0x3fe0000000000000L

    const-wide v4, 0x400921fb54442d18L

    float-to-double v6, p2

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 1453
    .local v0, "f":F
    sub-float v1, p4, p5

    .line 1454
    .local v1, "range":F
    const/4 v2, 0x0

    div-float v3, v0, p3

    aput v3, p1, v2

    .line 1455
    const/4 v2, 0x1

    aput v8, p1, v2

    .line 1456
    const/4 v2, 0x2

    aput v8, p1, v2

    .line 1457
    const/4 v2, 0x3

    aput v8, p1, v2

    .line 1458
    const/4 v2, 0x4

    aput v8, p1, v2

    .line 1459
    const/4 v2, 0x5

    aput v0, p1, v2

    .line 1460
    const/4 v2, 0x6

    aput v8, p1, v2

    .line 1461
    const/4 v2, 0x7

    aput v8, p1, v2

    .line 1462
    const/16 v2, 0x8

    aput v8, p1, v2

    .line 1463
    const/16 v2, 0x9

    aput v8, p1, v2

    .line 1464
    const/16 v2, 0xa

    div-float v3, p5, v1

    aput v3, p1, v2

    .line 1465
    const/16 v2, 0xb

    const/high16 v3, -0x40800000

    aput v3, p1, v2

    .line 1466
    const/16 v2, 0xc

    aput v8, p1, v2

    .line 1467
    const/16 v2, 0xd

    aput v8, p1, v2

    .line 1468
    const/16 v2, 0xe

    mul-float v3, p4, p5

    div-float/2addr v3, v1

    aput v3, p1, v2

    .line 1469
    const/16 v2, 0xf

    aput v8, p1, v2

    .line 1470
    return-void
.end method

.method private playDragSound(I)V
    .registers 11
    .param p1, "soundId"    # I

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f800000

    .line 1203
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_22

    .line 1204
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->sounds:[I

    aget v1, v1, p1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v8

    .line 1205
    .local v8, "streanID":I
    add-int/lit8 v8, v8, -0x1

    .line 1206
    new-instance v7, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer$SoundPoolThread;

    invoke-direct {v7, p0, v8}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer$SoundPoolThread;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;I)V

    .line 1207
    .local v7, "soundpoolThread":Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer$SoundPoolThread;
    invoke-virtual {v7}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer$SoundPoolThread;->run()V

    .line 1209
    .end local v7    # "soundpoolThread":Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer$SoundPoolThread;
    .end local v8    # "streanID":I
    :cond_22
    return-void
.end method

.method private playSound(I)V
    .registers 9
    .param p1, "soundId"    # I

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f800000

    .line 1196
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_17

    .line 1197
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->sounds:[I

    aget v1, v1, p1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 1199
    :cond_17
    return-void
.end method

.method private recycleBitmap()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1661
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "recycleBitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_13

    .line 1665
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1666
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    .line 1669
    :cond_13
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapBG:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1e

    .line 1671
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapBG:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1672
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapBG:Landroid/graphics/Bitmap;

    .line 1675
    :cond_1e
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_GRAVITY:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v0, v1, :cond_3a

    .line 1676
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapGravityRight:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2f

    .line 1677
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapGravityRight:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1678
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapGravityRight:Landroid/graphics/Bitmap;

    .line 1680
    :cond_2f
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapGravityLeft:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3a

    .line 1681
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapGravityLeft:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1682
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapGravityLeft:Landroid/graphics/Bitmap;

    .line 1685
    :cond_3a
    return-void
.end method

.method private removeDefaultRunnable()V
    .registers 3

    .prologue
    .line 2015
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_15

    .line 2018
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "mDefaultRunnable isn\'t null, mParent.removeCallbacks(mDefaultRunnable)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2021
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    .line 2023
    :cond_15
    return-void
.end method

.method private ripple(FFFZ)V
    .registers 13
    .param p1, "mx"    # F
    .param p2, "my"    # F
    .param p3, "intensity"    # F
    .param p4, "isTouchRipple"    # Z

    .prologue
    .line 1436
    if-eqz p4, :cond_8

    .line 1437
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mPreviousRippleTime:J

    .line 1439
    :cond_8
    const-string v0, "CircleUnlockRippleRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ripple(), mx = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", my = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", intensity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    check-cast v0, Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 1442
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->velocity:[F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->ripple([FIIIIFFF)V

    .line 1443
    return-void
.end method

.method private setBackground(Z)V
    .registers 14
    .param p1, "isLoadWaterBitmap"    # Z

    .prologue
    .line 1689
    const-string v9, "CircleUnlockRippleRenderer"

    const-string v10, "setBackground"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    :try_start_7
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenWallpaper;->isFlipboardWallpaper(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_50

    .line 1694
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->getWallpaperBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setTexture(Landroid/graphics/Bitmap;)V

    .line 1695
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10806e8

    invoke-static {v9, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setWaterTexture(Landroid/graphics/Bitmap;)V

    .line 1697
    sget-object v9, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v10, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_GRAVITY:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v9, v10, :cond_4b

    .line 1698
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1080125

    invoke-static {v9, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1080124

    invoke-static {v10, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setGravityTexture(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 1704
    :cond_4b
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->transferBitmapToJni(Z)V

    .line 1804
    :goto_4f
    return-void

    .line 1708
    :cond_50
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lockscreen_wallpaper_path"

    const/4 v11, -0x2

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mWallpaperPath:Ljava/lang/String;

    .line 1711
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->isMultiSIMDevice()Z

    move-result v9

    if-eqz v9, :cond_87

    .line 1713
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getCurrentWallpaper(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mWallpaperPath:Ljava/lang/String;

    .line 1714
    const-string v9, "CircleUnlockRippleRenderer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MultiSim Device wallpaperPath:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mWallpaperPath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    :cond_87
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mWallpaperPath:Ljava/lang/String;

    if-nez v9, :cond_8f

    .line 1718
    const-string v9, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper_ripple.jpg"

    iput-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mWallpaperPath:Ljava/lang/String;

    .line 1721
    :cond_8f
    const/4 v6, 0x0

    .line 1722
    .local v6, "inputStream":Ljava/io/InputStream;
    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1724
    .local v8, "wallpaperFile":Ljava/io/File;
    const-string v9, "CircleUnlockRippleRenderer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "wallpaperPath:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mWallpaperPath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    new-instance v0, Ljava/io/File;

    const-string v9, "/data/system/enterprise/lso/lockscreen_wallpaper_ripple.jpg"

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1728
    .local v0, "adminWallpaperFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_14c

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v9

    if-eqz v9, :cond_14c

    .line 1730
    const-string v9, "CircleUnlockRippleRenderer"

    const-string v10, "adminWallpaperFile wallpaperPath:/data/system/enterprise/lso/lockscreen_wallpaper_ripple.jpg"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    new-instance v6, Ljava/io/FileInputStream;

    .end local v6    # "inputStream":Ljava/io/InputStream;
    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1732
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    const-string v9, "/data/system/enterprise/lso/lockscreen_wallpaper_ripple.jpg"

    iput-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mWallpaperPath:Ljava/lang/String;

    .line 1769
    :goto_d4
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v9, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1771
    .local v7, "pBitmap":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_ed

    if-eqz v7, :cond_10c

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-nez v9, :cond_10c

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-nez v9, :cond_10c

    .line 1773
    :cond_ed
    if-nez v7, :cond_1d6

    .line 1775
    const-string v9, "CircleUnlockRippleRenderer"

    const-string v10, "pBitmap is null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    :goto_f6
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10804c6

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    .line 1783
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v9, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1786
    :cond_10c
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setTexture(Landroid/graphics/Bitmap;)V

    .line 1788
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 1789
    if-eqz p1, :cond_147

    .line 1790
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10806e8

    invoke-static {v9, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setWaterTexture(Landroid/graphics/Bitmap;)V

    .line 1791
    sget-object v9, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v10, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_GRAVITY:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v9, v10, :cond_147

    .line 1792
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1080125

    invoke-static {v9, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1080124

    invoke-static {v10, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setGravityTexture(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    :try_end_147
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_147} :catch_202

    .line 1803
    .end local v0    # "adminWallpaperFile":Ljava/io/File;
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .end local v7    # "pBitmap":Landroid/graphics/Bitmap;
    .end local v8    # "wallpaperFile":Ljava/io/File;
    :cond_147
    :goto_147
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->transferBitmapToJni(Z)V

    goto/16 :goto_4f

    .line 1735
    .restart local v0    # "adminWallpaperFile":Ljava/io/File;
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v8    # "wallpaperFile":Ljava/io/File;
    :cond_14c
    :try_start_14c
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_15f

    invoke-virtual {v8}, Ljava/io/File;->canRead()Z

    move-result v9

    if-eqz v9, :cond_15f

    .line 1736
    new-instance v6, Ljava/io/FileInputStream;

    .end local v6    # "inputStream":Ljava/io/InputStream;
    invoke-direct {v6, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .restart local v6    # "inputStream":Ljava/io/InputStream;
    goto/16 :goto_d4

    .line 1740
    :cond_15f
    new-instance v1, Ljava/io/File;

    const-string v9, "/system/wallpaper/lockscreen_default_wallpaper.jpg"

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1741
    .local v1, "defaultWallpaperFile":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v9, "/system/csc_contents/lockscreen_default_wallpaper.jpg"

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1742
    .local v2, "defaultWallpaperFileMultiCSC":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v9, "/system/wallpaper/lockscreen_default_wallpaper.png"

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1743
    .local v4, "defaultWallpaperFilePng":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v9, "/system/csc_contents/lockscreen_default_wallpaper.png"

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1745
    .local v3, "defaultWallpaperFileMultiCSCPng":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_18e

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v9

    if-eqz v9, :cond_18e

    .line 1747
    new-instance v6, Ljava/io/FileInputStream;

    .end local v6    # "inputStream":Ljava/io/InputStream;
    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .restart local v6    # "inputStream":Ljava/io/InputStream;
    goto/16 :goto_d4

    .line 1749
    :cond_18e
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1a1

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v9

    if-eqz v9, :cond_1a1

    .line 1751
    new-instance v6, Ljava/io/FileInputStream;

    .end local v6    # "inputStream":Ljava/io/InputStream;
    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .restart local v6    # "inputStream":Ljava/io/InputStream;
    goto/16 :goto_d4

    .line 1753
    :cond_1a1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1b4

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v9

    if-eqz v9, :cond_1b4

    .line 1755
    new-instance v6, Ljava/io/FileInputStream;

    .end local v6    # "inputStream":Ljava/io/InputStream;
    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .restart local v6    # "inputStream":Ljava/io/InputStream;
    goto/16 :goto_d4

    .line 1757
    :cond_1b4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1c7

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v9

    if-eqz v9, :cond_1c7

    .line 1759
    new-instance v6, Ljava/io/FileInputStream;

    .end local v6    # "inputStream":Ljava/io/InputStream;
    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .restart local v6    # "inputStream":Ljava/io/InputStream;
    goto/16 :goto_d4

    .line 1763
    :cond_1c7
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10804c6

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    goto/16 :goto_d4

    .line 1779
    .end local v1    # "defaultWallpaperFile":Ljava/io/File;
    .end local v2    # "defaultWallpaperFileMultiCSC":Ljava/io/File;
    .end local v3    # "defaultWallpaperFileMultiCSCPng":Ljava/io/File;
    .end local v4    # "defaultWallpaperFilePng":Ljava/io/File;
    .restart local v7    # "pBitmap":Landroid/graphics/Bitmap;
    :cond_1d6
    const-string v9, "CircleUnlockRippleRenderer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pBitmap.width = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", pBitmap.height = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_200
    .catch Ljava/lang/Exception; {:try_start_14c .. :try_end_200} :catch_202

    goto/16 :goto_f6

    .line 1797
    .end local v0    # "adminWallpaperFile":Ljava/io/File;
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .end local v7    # "pBitmap":Landroid/graphics/Bitmap;
    .end local v8    # "wallpaperFile":Ljava/io/File;
    :catch_202
    move-exception v5

    .line 1799
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_147
.end method

.method private setFalseDefaultEffectFlag()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 2028
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isFirstTouched:Z

    .line 2029
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->calledIsScreenTurnedOn:Z

    .line 2030
    return-void
.end method

.method private setHoverEnable(Z)V
    .registers 4
    .param p1, "isEnable"    # Z

    .prologue
    .line 1128
    if-eqz p1, :cond_19

    .line 1130
    const-string v0, "Fresnel"

    const-string v1, "setHoverEnable is true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_FRESENL_MIN:F

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mFresnelRatio:F

    .line 1132
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_SPECULAR_RATIO_MIN:F

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSpecularRatio:F

    .line 1133
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_EXPONENT_RATIO_MIN:F

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mExponentRatio:F

    .line 1134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mHoverEnabled:Z

    .line 1144
    :goto_18
    return-void

    .line 1138
    :cond_19
    const-string v0, "Fresnel"

    const-string v1, "setHoverEnable is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    const v0, 0x3dcccccd

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mFresnelRatio:F

    .line 1140
    const/high16 v0, 0x3f000000

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSpecularRatio:F

    .line 1141
    const/high16 v0, 0x41a00000

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mExponentRatio:F

    .line 1142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mHoverEnabled:Z

    goto :goto_18
.end method

.method private setInkColor()V
    .registers 11

    .prologue
    const-wide/high16 v2, 0x3ff0000000000000L

    const-wide v4, 0x406fe00000000000L

    const v9, -0xffff01

    .line 1786
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "lockscreen_ink_color"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 1787
    .local v7, "mColor":I
    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, v2

    div-double/2addr v0, v4

    double-to-float v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mInkCustomRed:F

    .line 1788
    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, v2

    div-double/2addr v0, v4

    double-to-float v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mInkCustomGreen:F

    .line 1789
    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, v2

    div-double/2addr v0, v4

    double-to-float v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mInkCustomBlue:F

    return-void
.end method

.method private setModeleConfiguration()V
    .registers 8

    .prologue
    const/16 v6, 0x15

    const/16 v5, 0x68

    const/4 v4, 0x3

    const/16 v3, 0x32

    const/4 v2, 0x0

    .line 500
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x2d0

    if-ne v0, v1, :cond_14

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x500

    if-eq v0, v1, :cond_20

    :cond_14
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x500

    if-ne v0, v1, :cond_7a

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x2d0

    if-ne v0, v1, :cond_7a

    .line 502
    :cond_20
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    .line 503
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    .line 504
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    .line 505
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    .line 506
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    .line 507
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    .line 508
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    .line 511
    const v0, 0x3eb33333

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->intensityForLandscape:F

    .line 512
    const/high16 v0, 0x3f000000

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->intensityForPortrait:F

    .line 516
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateXForPortrait:F

    .line 517
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateXForLandscape:F

    .line 520
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateYForPortrait:F

    .line 521
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateYForLandscape:F

    .line 524
    const v0, -0x3dd3cccd

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateZForPortrait:F

    .line 525
    const v0, -0x3e41999a

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateZForLandscape:F

    .line 528
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    .line 529
    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    .line 530
    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    .line 531
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    .line 534
    const/high16 v0, 0x42340000

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    .line 535
    const/high16 v0, 0x41c80000

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    .line 536
    const/high16 v0, 0x41f00000

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    .line 537
    const/high16 v0, 0x42380000

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    .line 538
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    .line 539
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    .line 712
    :goto_72
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->max:I

    .line 713
    return-void

    .line 542
    :cond_7a
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x21c

    if-ne v0, v1, :cond_86

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x3c0

    if-eq v0, v1, :cond_92

    :cond_86
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x3c0

    if-ne v0, v1, :cond_e5

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x21c

    if-ne v0, v1, :cond_e5

    .line 545
    :cond_92
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    .line 546
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    .line 548
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    .line 549
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    .line 550
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    .line 551
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    .line 552
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    .line 555
    const v0, 0x3eb33333

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->intensityForLandscape:F

    .line 556
    const/high16 v0, 0x3f000000

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->intensityForPortrait:F

    .line 560
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateXForPortrait:F

    .line 561
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateXForLandscape:F

    .line 564
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateYForPortrait:F

    .line 565
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateYForLandscape:F

    .line 568
    const v0, -0x3dd3cccd

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateZForPortrait:F

    .line 569
    const v0, -0x3e41999a

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateZForLandscape:F

    .line 572
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    .line 573
    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    .line 574
    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    .line 575
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    .line 578
    const/high16 v0, 0x42340000

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    .line 579
    const/high16 v0, 0x41c80000

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    .line 580
    const/high16 v0, 0x41f00000

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    .line 581
    const/high16 v0, 0x42380000

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    .line 582
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    .line 583
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    goto :goto_72

    .line 586
    :cond_e5
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x500

    if-ne v0, v1, :cond_f1

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x320

    if-eq v0, v1, :cond_fd

    :cond_f1
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x320

    if-ne v0, v1, :cond_15b

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x500

    if-ne v0, v1, :cond_15b

    .line 589
    :cond_fd
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    .line 590
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    .line 591
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    .line 592
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    .line 593
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    .line 594
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    .line 595
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    .line 598
    const v0, 0x3eb33333

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->intensityForLandscape:F

    .line 599
    const/high16 v0, 0x3f000000

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->intensityForPortrait:F

    .line 603
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateXForPortrait:F

    .line 604
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateXForLandscape:F

    .line 607
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateYForPortrait:F

    .line 608
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateYForLandscape:F

    .line 611
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->hasSystemNavBar:Z

    if-eqz v0, :cond_157

    const v0, -0x3ddacccd

    :goto_130
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateZForPortrait:F

    .line 612
    const v0, -0x3e388937

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateZForLandscape:F

    .line 615
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    .line 616
    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    .line 617
    const/16 v0, 0x13

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    .line 618
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    .line 621
    const/high16 v0, 0x42400000

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    .line 622
    const/high16 v0, 0x41d80000

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    .line 623
    const/high16 v0, 0x41f00000

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    .line 624
    const/high16 v0, 0x42380000

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    .line 625
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    .line 626
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    goto/16 :goto_72

    .line 611
    :cond_157
    const v0, -0x3dd3cccd

    goto :goto_130

    .line 630
    :cond_15b
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x1e0

    if-ne v0, v1, :cond_167

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x320

    if-eq v0, v1, :cond_173

    :cond_167
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x320

    if-ne v0, v1, :cond_1cd

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x1e0

    if-ne v0, v1, :cond_1cd

    .line 633
    :cond_173
    const/16 v0, 0x4a

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    .line 634
    const/16 v0, 0x4a

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    .line 635
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    .line 636
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    .line 637
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    .line 638
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    .line 639
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    .line 642
    const v0, 0x3eb33333

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->intensityForLandscape:F

    .line 643
    const/high16 v0, 0x3f000000

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->intensityForPortrait:F

    .line 647
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateXForPortrait:F

    .line 648
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateXForLandscape:F

    .line 651
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateYForPortrait:F

    .line 652
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateYForLandscape:F

    .line 655
    const v0, -0x3dd3cccd

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateZForPortrait:F

    .line 656
    const v0, -0x3e41999a

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateZForLandscape:F

    .line 659
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    .line 660
    const/16 v0, 0xe

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    .line 661
    const/16 v0, 0xe

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    .line 662
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    .line 665
    const/high16 v0, 0x42340000

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    .line 666
    const/high16 v0, 0x41c80000

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    .line 667
    const/high16 v0, 0x41e00000

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    .line 668
    const/high16 v0, 0x42340000

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    goto/16 :goto_72

    .line 672
    :cond_1cd
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    .line 673
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    .line 674
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    .line 675
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    .line 676
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    .line 677
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    .line 678
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    .line 681
    const v0, 0x3eb33333

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->intensityForLandscape:F

    .line 682
    const/high16 v0, 0x3f000000

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->intensityForPortrait:F

    .line 686
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateXForPortrait:F

    .line 687
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateXForLandscape:F

    .line 690
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateYForPortrait:F

    .line 691
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateYForLandscape:F

    .line 694
    const v0, -0x3dd3cccd

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateZForPortrait:F

    .line 695
    const v0, -0x3e41999a

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateZForLandscape:F

    .line 698
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    .line 699
    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    .line 700
    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    .line 701
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    .line 704
    const/high16 v0, 0x42340000

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    .line 705
    const/high16 v0, 0x41c80000

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    .line 706
    const/high16 v0, 0x41f00000

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    .line 707
    const/high16 v0, 0x42380000

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    .line 708
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    .line 709
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    goto/16 :goto_72
.end method

.method private setRenderModeDirty()V
    .registers 3

    .prologue
    .line 1422
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    check-cast v0, Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 1423
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "RENDERMODE_WHEN_DIRTY!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    return-void
.end method

.method private setRippleVersion()V
    .registers 5

    .prologue
    .line 1603
    const-string v1, "CircleUnlockRippleRenderer"

    const-string v2, "setRippleVersion"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.spen_usp"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 1607
    :try_start_15
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pen_hovering_ink_effect"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    .line 1608
    const-string v1, "CircleUnlockRippleRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mInkEffectColor = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_3e} :catch_52

    .line 1614
    :cond_3e
    :goto_3e
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isInkEnable:Z

    if-eqz v1, :cond_57

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    if-eqz v1, :cond_57

    .line 1616
    const-string v1, "CircleUnlockRippleRenderer"

    const-string v2, "Def.MODE = ModeType.RIPPLE_LIGHT_WITH_INK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_INK:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sput-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    .line 1629
    :goto_51
    return-void

    .line 1609
    :catch_52
    move-exception v0

    .line 1610
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3e

    .line 1619
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_57
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isArcMotionEnabled()Z

    move-result v1

    if-eqz v1, :cond_69

    .line 1621
    const-string v1, "CircleUnlockRippleRenderer"

    const-string v2, "ModeType.RIPPLE_GRAVITY_LIGHT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_GRAVITY:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sput-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    goto :goto_51

    .line 1626
    :cond_69
    const-string v1, "CircleUnlockRippleRenderer"

    const-string v2, "ModeType.RIPPLE_LIGHT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sput-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    goto :goto_51
.end method

.method private setSound()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1814
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_37

    .line 1817
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "show mSoundPool is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1, v4, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    .line 1820
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->sounds:[I

    .line 1821
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->sounds:[I

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mRDownId:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v5

    .line 1822
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->sounds:[I

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mRUpId:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v4

    .line 1825
    :cond_37
    return-void
.end method

.method private transferBitmapToJni(Z)V
    .registers 4
    .param p1, "isLoadWaterBitmap"    # Z

    .prologue
    .line 1589
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "transferBitmapToJni"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "transferBGBitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapBG:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->transferBGBitmap(Landroid/graphics/Bitmap;)V

    .line 1592
    if-eqz p1, :cond_2e

    .line 1593
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "transferWaterBitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->transferWaterBitmap(Landroid/graphics/Bitmap;)V

    .line 1595
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_GRAVITY:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v0, v1, :cond_2e

    .line 1596
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapGravityRight:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapGravityLeft:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->transferGravityBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 1599
    :cond_2e
    return-void
.end method


# virtual methods
.method public alphaAnimation()V
    .registers 2

    .prologue
    .line 1473
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->reflectionRatio:F

    .line 1474
    return-void
.end method

.method public cleanUp()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1894
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_16

    .line 1897
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 1898
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    .line 1899
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->sounds:[I

    .line 1903
    :cond_16
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->removeDefaultRunnable()V

    .line 1904
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setFalseDefaultEffectFlag()V

    .line 1905
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isTouched:Z

    .line 1908
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_WITH_INK:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    if-eq v0, v1, :cond_2b

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_INK:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v0, v1, :cond_43

    .line 1910
    :cond_2b
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isMakedASpenToucdUp:Z

    if-nez v0, :cond_43

    .line 1912
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "Spen onTouch(ACTION UP) , because touch up wasn\'t maked by uper layer until cleanUp "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1913
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseX:F

    float-to-int v0, v0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseY:F

    float-to-int v1, v1

    const/high16 v2, 0x3f800000

    invoke-static {v0, v1, v3, v2}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->onTouch(IIIF)V

    .line 1914
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isMakedASpenToucdUp:Z

    .line 1919
    :cond_43
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer$3;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1938
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_GRAVITY:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v0, v1, :cond_5a

    .line 1939
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    invoke-virtual {v0, p0}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;)V

    .line 1941
    :cond_5a
    return-void
.end method

.method public clearAllEffect()V
    .registers 3

    .prologue
    .line 1573
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->clearRipple()V

    .line 1575
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_WITH_INK:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    if-eq v0, v1, :cond_f

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_INK:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v0, v1, :cond_19

    .line 1577
    :cond_f
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "clearInkValue"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->clearInkValue()V

    .line 1580
    :cond_19
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_GRAVITY:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v0, v1, :cond_29

    .line 1582
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "clear gravity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSelectEffect:I

    .line 1585
    :cond_29
    return-void
.end method

.method public clearRipple()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1552
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "clearRipple"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    if-nez v0, :cond_d

    .line 1569
    :cond_c
    :goto_c
    return-void

    .line 1557
    :cond_d
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->velocity:[F

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heights:[F

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->velocity:[F

    array-length v0, v0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->max:I

    if-lt v0, v1, :cond_c

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heights:[F

    array-length v0, v0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->max:I

    if-lt v0, v1, :cond_c

    .line 1562
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heights:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 1563
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->velocity:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 1564
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub1:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 1565
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub1:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 1566
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub2:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 1567
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub2:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 1568
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    goto :goto_c
.end method

.method public destroyed()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2034
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2036
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isRestrictCPUClock:Z

    if-eqz v0, :cond_16

    .line 2038
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_16

    .line 2040
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->releaseBooster(I)V

    .line 2041
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    .line 2045
    :cond_16
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_24

    .line 2047
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_24

    .line 2049
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->releaseBooster(I)V

    .line 2050
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    .line 2054
    :cond_24
    return-void
.end method

.method public disableLeftDirectionEffect()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 2325
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gravityEffectType:I

    .line 2326
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mGravityEffectFrameCnt:I

    if-nez v3, :cond_a

    .line 2328
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mDrawEffectFrameCnt:I

    .line 2331
    :cond_a
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mGravityEffectFrameCnt:I

    const/16 v4, 0x3c

    if-gt v3, v4, :cond_13

    .line 2333
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->onMakeFromLeft2()V

    .line 2336
    :cond_13
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->leftDirectionTilt:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_61

    .line 2338
    const-string v3, "CircleUnlockRippleRenderer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "leftDirectionTilt "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->leftDirectionTilt:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2339
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->leftDirectionTilt:F

    const v4, 0x3c23d70a

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->leftDirectionTilt:F

    .line 2341
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3d
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    if-ge v0, v3, :cond_67

    .line 2343
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_42
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    if-ge v2, v3, :cond_5e

    .line 2345
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v3, v0

    add-int/2addr v3, v2

    mul-int/lit8 v1, v3, 0x2

    .line 2346
    .local v1, "idx":I
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->textureu:[F

    const v4, 0x3f19999a

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->leftDirectionTilt:F

    add-float/2addr v4, v5

    const/high16 v5, 0x42c80000

    div-float/2addr v4, v5

    int-to-float v5, v0

    mul-float/2addr v4, v5

    aput v4, v3, v1

    .line 2343
    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    .line 2341
    .end local v1    # "idx":I
    :cond_5e
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    .line 2350
    .end local v0    # "i":I
    .end local v2    # "j":I
    :cond_61
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSelectEffect:I

    .line 2351
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mGravityEffectFrameCnt:I

    .line 2355
    :goto_66
    return-void

    .line 2354
    .restart local v0    # "i":I
    :cond_67
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mGravityEffectFrameCnt:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mGravityEffectFrameCnt:I

    goto :goto_66
.end method

.method public disableRightDirectionEffect()V
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 2232
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mGravityEffectFrameCnt:I

    if-nez v3, :cond_7

    .line 2234
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mDrawEffectFrameCnt:I

    .line 2236
    :cond_7
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mGravityEffectFrameCnt:I

    const/16 v4, 0x3c

    if-gt v3, v4, :cond_10

    .line 2238
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->onMakeFromRight2()V

    .line 2241
    :cond_10
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->rightDirectionTilt:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_4b

    .line 2243
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->rightDirectionTilt:F

    const v4, 0x3c23d70a

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->rightDirectionTilt:F

    .line 2244
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_20
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    if-ge v0, v3, :cond_64

    .line 2246
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_25
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    if-ge v2, v3, :cond_48

    .line 2248
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v3, v0

    add-int/2addr v3, v2

    mul-int/lit8 v1, v3, 0x2

    .line 2249
    .local v1, "idx":I
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->textureu:[F

    const v4, 0x3ecccccd

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->rightDirectionTilt:F

    sub-float/2addr v4, v5

    const v5, 0x3f19999a

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->rightDirectionTilt:F

    add-float/2addr v5, v6

    const/high16 v6, 0x42c80000

    div-float/2addr v5, v6

    int-to-float v6, v0

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aput v4, v3, v1

    .line 2246
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 2244
    .end local v1    # "idx":I
    :cond_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 2253
    .end local v0    # "i":I
    .end local v2    # "j":I
    :cond_4b
    const v3, 0x3dcccccd

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mFresnelRatio:F

    .line 2254
    const/high16 v3, 0x3f000000

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSpecularRatio:F

    .line 2255
    const v3, 0x3f666666

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mBottomWaveReductionRate:F

    .line 2256
    const v3, 0x3e99999a

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mBottomWaveVelocity:F

    .line 2257
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSelectEffect:I

    .line 2258
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mGravityEffectFrameCnt:I

    .line 2262
    :goto_63
    return-void

    .line 2261
    .restart local v0    # "i":I
    :cond_64
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mGravityEffectFrameCnt:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mGravityEffectFrameCnt:I

    goto :goto_63
.end method

.method public effectSelect(I)V
    .registers 4
    .param p1, "effecType"    # I

    .prologue
    .line 2136
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSelectEffect:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    .line 2138
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSelectEffect:I

    .line 2139
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    check-cast v0, Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 2142
    :cond_f
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mGravityEffectFrameCnt:I

    .line 2143
    return-void
.end method

.method public enableLeftDirectionEffect()V
    .registers 11

    .prologue
    const/16 v9, 0x5dc

    const/16 v8, 0x5a

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 2267
    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gravityEffectType:I

    .line 2268
    const-string v3, "CircleUnlockRippleRenderer"

    const-string v4, "mHoverEnabled true ======================="

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2269
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mFresnelRatio:F

    const v4, 0x3c23d70a

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mFresnelRatio:F

    .line 2270
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSpecularRatio:F

    const/high16 v4, 0x3f800000

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSpecularRatio:F

    .line 2271
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mFresnelRatio:F

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_FRESENL_MAX:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2b

    .line 2272
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_FRESENL_MAX:F

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mFresnelRatio:F

    .line 2274
    :cond_2b
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSpecularRatio:F

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_SPECULAR_RATIO_MAX:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_37

    .line 2275
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_SPECULAR_RATIO_MAX:F

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSpecularRatio:F

    .line 2277
    :cond_37
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mGravityEffectFrameCnt:I

    if-nez v3, :cond_5b

    .line 2279
    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gravityEffectType:I

    .line 2280
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3e
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    if-ge v0, v3, :cond_57

    .line 2282
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_43
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    if-ge v2, v3, :cond_54

    .line 2284
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v3, v0

    add-int/2addr v3, v2

    mul-int/lit8 v1, v3, 0x2

    .line 2286
    .local v1, "idx":I
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->textureu:[F

    aput v5, v3, v1

    .line 2282
    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    .line 2280
    .end local v1    # "idx":I
    :cond_54
    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    .line 2289
    .end local v2    # "j":I
    :cond_57
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->leftDirectionTilt:F

    .line 2290
    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mDrawEffectFrameCnt:I

    .line 2293
    .end local v0    # "i":I
    :cond_5b
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mGravityEffectFrameCnt:I

    if-ltz v3, :cond_6d

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mGravityEffectFrameCnt:I

    if-gt v3, v8, :cond_6d

    .line 2295
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->onMakeFromRight2()V

    .line 2319
    :cond_66
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mGravityEffectFrameCnt:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mGravityEffectFrameCnt:I

    .line 2320
    :goto_6c
    return-void

    .line 2297
    :cond_6d
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mGravityEffectFrameCnt:I

    if-le v3, v8, :cond_ae

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mGravityEffectFrameCnt:I

    if-gt v3, v9, :cond_ae

    .line 2299
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->onMakeFromLeft2()V

    .line 2300
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->leftDirectionTilt:F

    const v4, 0x3ecccccd

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_66

    .line 2302
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->leftDirectionTilt:F

    const v4, 0x3ba3d70a

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->leftDirectionTilt:F

    .line 2303
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_8a
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    if-ge v0, v3, :cond_66

    .line 2305
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_8f
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    if-ge v2, v3, :cond_ab

    .line 2307
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v3, v0

    add-int/2addr v3, v2

    mul-int/lit8 v1, v3, 0x2

    .line 2308
    .restart local v1    # "idx":I
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->textureu:[F

    const v4, 0x3f19999a

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->leftDirectionTilt:F

    add-float/2addr v4, v5

    const/high16 v5, 0x42c80000

    div-float/2addr v4, v5

    int-to-float v5, v0

    mul-float/2addr v4, v5

    aput v4, v3, v1

    .line 2305
    add-int/lit8 v2, v2, 0x1

    goto :goto_8f

    .line 2303
    .end local v1    # "idx":I
    :cond_ab
    add-int/lit8 v0, v0, 0x1

    goto :goto_8a

    .line 2313
    .end local v0    # "i":I
    .end local v2    # "j":I
    :cond_ae
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mGravityEffectFrameCnt:I

    if-le v3, v9, :cond_66

    .line 2315
    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mGravityEffectFrameCnt:I

    .line 2316
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSelectEffect:I

    goto :goto_6c
.end method

.method public enableRightDirectionEffect()V
    .registers 11

    .prologue
    const/16 v9, 0x5dc

    const/16 v8, 0x5a

    const/high16 v6, 0x3f800000

    const v7, 0x3ecccccd

    const/4 v5, 0x0

    .line 2167
    const-string v3, "CircleUnlockRippleRenderer"

    const-string v4, "mHoverEnabled true ======================="

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2168
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mFresnelRatio:F

    const v4, 0x3c23d70a

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mFresnelRatio:F

    .line 2169
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSpecularRatio:F

    add-float/2addr v3, v6

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSpecularRatio:F

    .line 2171
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mFresnelRatio:F

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_FRESENL_MAX:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2a

    .line 2172
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_FRESENL_MAX:F

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mFresnelRatio:F

    .line 2175
    :cond_2a
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSpecularRatio:F

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_SPECULAR_RATIO_MAX:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_36

    .line 2176
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_SPECULAR_RATIO_MAX:F

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSpecularRatio:F

    .line 2180
    :cond_36
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mGravityEffectFrameCnt:I

    if-nez v3, :cond_62

    .line 2182
    const/high16 v3, 0x3f000000

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mBottomWaveVelocity:F

    .line 2183
    const v3, 0x3f733333

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mBottomWaveReductionRate:F

    .line 2185
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_44
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    if-ge v0, v3, :cond_5d

    .line 2187
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_49
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    if-ge v2, v3, :cond_5a

    .line 2189
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v3, v0

    add-int/2addr v3, v2

    mul-int/lit8 v1, v3, 0x2

    .line 2191
    .local v1, "idx":I
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->textureu:[F

    aput v6, v3, v1

    .line 2187
    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    .line 2185
    .end local v1    # "idx":I
    :cond_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    .line 2195
    .end local v2    # "j":I
    :cond_5d
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->rightDirectionTilt:F

    .line 2197
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mDrawEffectFrameCnt:I

    .line 2200
    .end local v0    # "i":I
    :cond_62
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mGravityEffectFrameCnt:I

    if-ltz v3, :cond_76

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mGravityEffectFrameCnt:I

    if-gt v3, v8, :cond_76

    .line 2202
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->onMakeFromLeft2()V

    .line 2203
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gravityEffectType:I

    .line 2227
    :cond_6f
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mGravityEffectFrameCnt:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mGravityEffectFrameCnt:I

    .line 2228
    :goto_75
    return-void

    .line 2205
    :cond_76
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mGravityEffectFrameCnt:I

    if-le v3, v8, :cond_b9

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mGravityEffectFrameCnt:I

    if-gt v3, v9, :cond_b9

    .line 2207
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->onMakeFromRight2()V

    .line 2208
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->rightDirectionTilt:F

    cmpg-float v3, v3, v7

    if-gtz v3, :cond_6f

    .line 2210
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->rightDirectionTilt:F

    const v4, 0x3ba3d70a

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->rightDirectionTilt:F

    .line 2211
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_90
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    if-ge v0, v3, :cond_6f

    .line 2213
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_95
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    if-ge v2, v3, :cond_b6

    .line 2215
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v3, v0

    add-int/2addr v3, v2

    mul-int/lit8 v1, v3, 0x2

    .line 2216
    .restart local v1    # "idx":I
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->textureu:[F

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->rightDirectionTilt:F

    sub-float v4, v7, v4

    const v5, 0x3f19999a

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->rightDirectionTilt:F

    add-float/2addr v5, v6

    const/high16 v6, 0x42c80000

    div-float/2addr v5, v6

    int-to-float v6, v0

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aput v4, v3, v1

    .line 2213
    add-int/lit8 v2, v2, 0x1

    goto :goto_95

    .line 2211
    .end local v1    # "idx":I
    :cond_b6
    add-int/lit8 v0, v0, 0x1

    goto :goto_90

    .line 2221
    .end local v0    # "i":I
    .end local v2    # "j":I
    :cond_b9
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mGravityEffectFrameCnt:I

    if-le v3, v9, :cond_6f

    .line 2223
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mGravityEffectFrameCnt:I

    .line 2224
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSelectEffect:I

    goto :goto_75
.end method

.method public getSoundNum()I
    .registers 2

    .prologue
    .line 1212
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->soundNum:I

    return v0
.end method

.method public getSoundTime()I
    .registers 2

    .prologue
    .line 1218
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->soundTime:I

    return v0
.end method

.method public mouseMove(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 932
    const-string v0, "CircleUnlockRippleRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event  action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", view = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", src = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->drawCount:I

    if-nez v0, :cond_51

    .line 940
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "drawCount == 0 Touch Return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    const/4 v0, 0x0

    .line 1122
    :goto_50
    return v0

    .line 944
    :cond_51
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isFirstTouched:Z

    if-eqz v0, :cond_62

    .line 946
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "isFirstTouched is true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->removeDefaultRunnable()V

    .line 948
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setFalseDefaultEffectFlag()V

    .line 951
    :cond_62
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseX:F

    .line 952
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseY:F

    .line 954
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_7a

    .line 956
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    .line 957
    const/4 v0, 0x0

    goto :goto_50

    .line 961
    :cond_7a
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_8a

    .line 963
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    .line 964
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseX:F

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->downX:F

    .line 965
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseY:F

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->downY:F

    .line 970
    :cond_8a
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mLandscape:Z

    if-eqz v0, :cond_1f6

    .line 972
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseX:F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    .line 973
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    .line 974
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseY:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    .line 975
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    neg-float v0, v0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    .line 985
    :goto_c2
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_WITH_INK:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    if-eq v0, v1, :cond_ce

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_INK:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v0, v1, :cond_f6

    .line 987
    :cond_ce
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPressure()F

    move-result v12

    .line 989
    .local v12, "pressure":F
    float-to-double v0, v12

    const-wide/high16 v2, 0x3ff0000000000000L

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_db

    .line 991
    const/high16 v12, 0x3f800000

    .line 994
    :cond_db
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_22c

    .line 996
    :cond_e9
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseX:F

    float-to-int v0, v0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseY:F

    float-to-int v1, v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v12}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->onTouch(IIIF)V

    .line 997
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isMakedASpenToucdUp:Z

    .line 1006
    .end local v12    # "pressure":F
    :cond_f6
    :goto_f6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_250

    .line 1009
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setHoverEnable(Z)V

    .line 1010
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isTouched:Z

    .line 1012
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_13e

    .line 1015
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "MotionEvent.ACTION_DOWN mSoundPool == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xa

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    .line 1018
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->sounds:[I

    .line 1019
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->sounds:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mRDownId:I

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 1020
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->sounds:[I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mRUpId:I

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 1023
    :cond_13e
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    .line 1024
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseX:F

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->downX:F

    .line 1025
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseY:F

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->downY:F

    .line 1026
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->rippleDistance:I

    .line 1027
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->prevPressTime:J

    .line 1028
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->diffPressTime:J

    .line 1030
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->intensityForRipple:F

    const/high16 v3, 0x40800000

    mul-float/2addr v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->ripple(FFFZ)V

    .line 1031
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->playSound(I)V

    .line 1072
    :cond_167
    :goto_167
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    if-eq v0, v1, :cond_179

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_INK:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    if-eq v0, v1, :cond_179

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v0, v1, :cond_1f3

    .line 1076
    :cond_179
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_188

    .line 1078
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "========================= ACTION_HOVER_ENTER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    :cond_188
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_304

    .line 1083
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 1085
    .local v10, "hoverMoveTime":J
    iget-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mPreviousRippleTime:J

    sub-long v0, v10, v0

    const-wide/16 v2, 0x640

    cmp-long v0, v0, v2

    if-lez v0, :cond_1ac

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mHoverEnabled:Z

    if-nez v0, :cond_1ac

    .line 1087
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "setHoverEnable true ======================="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setHoverEnable(Z)V

    .line 1091
    :cond_1ac
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mHoverEnabled:Z

    if-eqz v0, :cond_1e9

    .line 1093
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mFresnelRatio:F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->hoverPlus_Frenel:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mFresnelRatio:F

    .line 1094
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSpecularRatio:F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->hoverPlus_Specular:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSpecularRatio:F

    .line 1095
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mExponentRatio:F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->hoverPlus_exponent:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mExponentRatio:F

    .line 1097
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mFresnelRatio:F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_FRESENL_MAX:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1d1

    .line 1099
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_FRESENL_MAX:F

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mFresnelRatio:F

    .line 1102
    :cond_1d1
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSpecularRatio:F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_SPECULAR_RATIO_MAX:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1dd

    .line 1104
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_SPECULAR_RATIO_MAX:F

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSpecularRatio:F

    .line 1107
    :cond_1dd
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mExponentRatio:F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_EXPONENT_RATIO_MAX:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1e9

    .line 1109
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_EXPONENT_RATIO_MAX:F

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mExponentRatio:F

    .line 1114
    :cond_1e9
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mHoverIntensity:F

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->ripple(FFFZ)V

    .line 1122
    .end local v10    # "hoverMoveTime":J
    :cond_1f3
    :goto_1f3
    const/4 v0, 0x0

    goto/16 :goto_50

    .line 979
    :cond_1f6
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseX:F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    .line 980
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    .line 981
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseY:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    .line 982
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    neg-float v0, v0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    goto/16 :goto_c2

    .line 999
    .restart local v12    # "pressure":F
    :cond_22c
    move-object/from16 v0, p0

    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->checkFingerInk()Z

    move-result v1

    if-nez v1, :cond_23e

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit16 v0, v0, 0x4002

    const/16 v1, 0x4002

    if-ne v0, v1, :cond_f6

    .line 1001
    :cond_23e
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseX:F

    float-to-int v0, v0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseY:F

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-static {v0, v1, v2, v12}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->onTouch(IIIF)V

    .line 1002
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isMakedASpenToucdUp:Z

    goto/16 :goto_f6

    .line 1033
    .end local v12    # "pressure":F
    :cond_250
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2bc

    .line 1035
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setHoverEnable(Z)V

    .line 1036
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isTouched:Z

    .line 1037
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseX:F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->downX:F

    sub-float v8, v0, v1

    .line 1038
    .local v8, "dx":F
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseY:F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->downY:F

    sub-float v9, v0, v1

    .line 1039
    .local v9, "dy":F
    float-to-double v0, v8

    const-wide/high16 v2, 0x4000000000000000L

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    float-to-double v2, v9

    const-wide/high16 v4, 0x4000000000000000L

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v7, v0

    .line 1040
    .local v7, "distForwWave":I
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->rippleDistance:I

    add-int/2addr v0, v7

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->rippleDistance:I

    .line 1041
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseX:F

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->downX:F

    .line 1042
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseY:F

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->downY:F

    .line 1044
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->rippleDistance:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->rippleDragThreshold:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_167

    .line 1045
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setHoverEnable(Z)V

    .line 1046
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->rippleDistance:I

    .line 1048
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->intensityForRipple:F

    const/high16 v3, 0x40400000

    mul-float/2addr v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->ripple(FFFZ)V

    .line 1049
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->playDragSound(I)V

    .line 1050
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    const-wide/16 v4, 0x14

    const/high16 v6, 0x40400000

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->startLongPressCheck2(Landroid/view/View;FFJF)V

    goto/16 :goto_167

    .line 1053
    .end local v7    # "distForwWave":I
    .end local v8    # "dx":F
    .end local v9    # "dy":F
    :cond_2bc
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2f1

    .line 1055
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setHoverEnable(Z)V

    .line 1056
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isTouched:Z

    .line 1058
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->prevPressTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->diffPressTime:J

    .line 1059
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    .line 1061
    iget-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->diffPressTime:J

    const-wide/16 v2, 0x258

    cmp-long v0, v0, v2

    if-lez v0, :cond_167

    .line 1063
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->intensityForRipple:F

    const/high16 v3, 0x40800000

    mul-float/2addr v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->ripple(FFFZ)V

    .line 1064
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->playSound(I)V

    goto/16 :goto_167

    .line 1066
    :cond_2f1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_167

    .line 1067
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    .line 1068
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isTouched:Z

    .line 1069
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setHoverEnable(Z)V

    goto/16 :goto_167

    .line 1117
    :cond_304
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1f3

    .line 1119
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "ACTION_HOVER_EXIT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f3
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 26
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 827
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->drawCount:I

    if-nez v1, :cond_4f

    .line 828
    const-string v1, "CircleUnlockRippleRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ondrawfrmae drawCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->drawCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->loadBitmapIfBitmapNull()V

    .line 831
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->onLoadBGTextures()V

    .line 832
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->onLoadWaterTextures()V

    .line 834
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v1, v2, :cond_156

    .line 835
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->onInitSetting(IIZ)V

    .line 836
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->onInitGPU()V

    .line 848
    :cond_40
    :goto_40
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_WITH_INK:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    if-eq v1, v2, :cond_4c

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_INK:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v1, v2, :cond_4f

    .line 850
    :cond_4c
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->clearInkValue()V

    .line 854
    :cond_4f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mBgChangeCheckArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_187

    .line 856
    const-string v1, "CircleUnlockRippleRenderer"

    const-string v2, "Change opengl BG Texture"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->onFreeBGTextures()V

    .line 858
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->onLoadBGTextures()V

    .line 859
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mBgChangeCheckArray:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 866
    :cond_6e
    :goto_6e
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mLandscape:Z

    if-nez v1, :cond_249

    .line 868
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_GRAVITY:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v1, v2, :cond_192

    .line 869
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->textureu:[F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gravityEffectType:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->vertices:[F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->indices:[S

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->vertices:[F

    array-length v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    array-length v7, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->indices:[S

    array-length v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    int-to-float v10, v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mBitmapRatio:F

    div-float/2addr v10, v11

    float-to-int v10, v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    div-int/lit8 v12, v12, 0x2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    div-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->refractiveIndex:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->reflectionRatio:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->alphaRatio1:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->alphaRatio2:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->checkInkColor()I

    move-result v0

    if-eqz v0, :cond_f0

    move-object/from16 v0, p0

    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setInkColor()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mInkCustomRed:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mInkCustomGreen:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mInkCustomBlue:F

    move/from16 v20, v0

    goto :goto_126

    :cond_f0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    const/16 v19, 0x0

    aget v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    move/from16 v20, v0

    aget-object v19, v19, v20

    const/16 v20, 0x1

    aget v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    move/from16 v21, v0

    aget-object v20, v20, v21

    const/16 v21, 0x2

    aget v20, v20, v21

    :goto_126
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mFresnelRatio:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSpecularRatio:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mExponentRatio:F

    move/from16 v23, v0

    invoke-static/range {v1 .. v23}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->onDrawGravity([FI[F[F[SIII[FIIIIFFFFFFFFFF)V

    .line 916
    :goto_13b
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->drawCount:I

    if-lez v1, :cond_144

    .line 917
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->move()V

    .line 919
    :cond_144
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->drawCount:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_155

    .line 921
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->drawCount:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->drawCount:I

    .line 926
    :cond_155
    return-void

    .line 838
    :cond_156
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_INK:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v1, v2, :cond_16d

    .line 839
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->onInitSetting(IIZ)V

    .line 840
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->onInitGPU()V

    goto/16 :goto_40

    .line 842
    :cond_16d
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_GRAVITY:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v1, v2, :cond_40

    .line 843
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->onInitSetting(IIZ)V

    .line 844
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->onInitGPUGravity()V

    .line 845
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->onLoadGravityTextures()V

    goto/16 :goto_40

    .line 861
    :cond_187
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_GRAVITY:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v1, v2, :cond_6e

    .line 863
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->updateGravityRippleEffect()V

    goto/16 :goto_6e

    .line 880
    :cond_192
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->vertices:[F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->indices:[S

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->vertices:[F

    array-length v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    array-length v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->indices:[S

    array-length v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mBitmapRatio:F

    div-float/2addr v8, v9

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    div-int/lit8 v10, v10, 0x2

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    div-int/lit8 v11, v11, 0x2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->refractiveIndex:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->reflectionRatio:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->alphaRatio1:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->alphaRatio2:F

    move-object/from16 v0, p0

    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->checkInkColor()I

    move-result v0

    if-eqz v0, :cond_1fc

    move-object/from16 v0, p0

    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setInkColor()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mInkCustomRed:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mInkCustomGreen:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mInkCustomBlue:F

    move/from16 v18, v0

    goto :goto_232

    :cond_1fc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    move/from16 v17, v0

    aget-object v16, v16, v17

    const/16 v17, 0x0

    aget v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    move/from16 v18, v0

    aget-object v17, v17, v18

    const/16 v18, 0x1

    aget v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    const/16 v19, 0x2

    aget v18, v18, v19

    :goto_232
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mFresnelRatio:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSpecularRatio:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mExponentRatio:F

    move/from16 v21, v0

    invoke-static/range {v1 .. v21}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->onDraw([F[F[SIII[FIIIIFFFFFFFFFF)V

    goto/16 :goto_13b

    .line 892
    :cond_249
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_GRAVITY:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v1, v2, :cond_312

    .line 893
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->textureu:[F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gravityEffectType:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->vertices:[F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->indices:[S

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->vertices:[F

    array-length v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    array-length v7, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->indices:[S

    array-length v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    int-to-float v10, v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mBitmapRatio:F

    div-float/2addr v10, v11

    float-to-int v10, v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    div-int/lit8 v12, v12, 0x2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    div-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->refractiveIndex:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->reflectionRatio:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->alphaRatio1:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->alphaRatio2:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->checkInkColor()I

    move-result v0

    if-eqz v0, :cond_2c5

    move-object/from16 v0, p0

    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setInkColor()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mInkCustomRed:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mInkCustomGreen:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mInkCustomBlue:F

    move/from16 v20, v0

    goto :goto_2fb

    :cond_2c5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    const/16 v19, 0x0

    aget v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    move/from16 v20, v0

    aget-object v19, v19, v20

    const/16 v20, 0x1

    aget v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    move/from16 v21, v0

    aget-object v20, v20, v21

    const/16 v21, 0x2

    aget v20, v20, v21

    :goto_2fb
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mFresnelRatio:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSpecularRatio:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mExponentRatio:F

    move/from16 v23, v0

    invoke-static/range {v1 .. v23}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->onDrawGravity([FI[F[F[SIII[FIIIIFFFFFFFFFF)V

    goto/16 :goto_13b

    .line 904
    :cond_312
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->vertices:[F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->indices:[S

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->vertices:[F

    array-length v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    array-length v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->indices:[S

    array-length v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    int-to-float v9, v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mBitmapRatio:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    div-int/lit8 v10, v10, 0x2

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    div-int/lit8 v11, v11, 0x2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->refractiveIndex:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->reflectionRatio:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->alphaRatio1:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->alphaRatio2:F

    move-object/from16 v0, p0

    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->checkInkColor()I

    move-result v0

    if-eqz v0, :cond_37c

    move-object/from16 v0, p0

    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setInkColor()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mInkCustomRed:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mInkCustomGreen:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mInkCustomBlue:F

    move/from16 v18, v0

    goto :goto_3b2

    :cond_37c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    move/from16 v17, v0

    aget-object v16, v16, v17

    const/16 v17, 0x0

    aget v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    move/from16 v18, v0

    aget-object v17, v17, v18

    const/16 v18, 0x1

    aget v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    const/16 v19, 0x2

    aget v18, v18, v19

    :goto_3b2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mFresnelRatio:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSpecularRatio:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mExponentRatio:F

    move/from16 v21, v0

    invoke-static/range {v1 .. v21}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->onDraw([F[F[SIII[FIIIIFFFFFFFFFF)V

    goto/16 :goto_13b
.end method

.method public onMakeFromLeft2()V
    .registers 13

    .prologue
    const/high16 v11, 0x40400000

    .line 2061
    const/4 v4, 0x1

    .line 2062
    .local v4, "xSpan":I
    const/4 v5, 0x1

    .line 2064
    .local v5, "ySpan":I
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mDrawEffectFrameCnt:I

    rem-int/lit8 v6, v6, 0x1e

    if-nez v6, :cond_74

    .line 2066
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    if-le v6, v7, :cond_51

    .line 2067
    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    .line 2068
    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    .line 2069
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    sub-int v2, v6, v5

    .line 2077
    .local v2, "jmax":I
    :goto_18
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4024000000000000L

    mul-double/2addr v6, v8

    double-to-int v6, v6

    add-int/lit8 v3, v6, 0xf

    .line 2079
    .local v3, "offset":I
    move v0, v4

    .local v0, "i":I
    :goto_23
    const/16 v6, 0x19

    if-ge v0, v6, :cond_5d

    .line 2080
    move v1, v5

    .local v1, "j":I
    :goto_28
    if-ge v1, v2, :cond_5a

    .line 2081
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub1:[F

    mul-int/lit8 v7, v0, 0x68

    add-int/2addr v7, v1

    sget-object v8, Lcom/android/internal/policy/impl/keyguard/sec/Value$velocity4;->velocity:[F

    mul-int/lit8 v9, v0, 0x68

    add-int v10, v1, v3

    add-int/2addr v9, v10

    aget v8, v8, v9

    mul-float/2addr v8, v11

    aput v8, v6, v7

    .line 2082
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub2:[F

    mul-int/lit8 v7, v0, 0x68

    add-int/2addr v7, v1

    sget-object v8, Lcom/android/internal/policy/impl/keyguard/sec/Value$velocity3;->velocity:[F

    mul-int/lit8 v9, v0, 0x68

    add-int v10, v1, v3

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x3

    aget v8, v8, v9

    mul-float/2addr v8, v11

    aput v8, v6, v7

    .line 2080
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 2071
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "jmax":I
    .end local v3    # "offset":I
    :cond_51
    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    .line 2072
    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    .line 2073
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    sub-int v2, v6, v5

    .restart local v2    # "jmax":I
    goto :goto_18

    .line 2079
    .restart local v0    # "i":I
    .restart local v1    # "j":I
    .restart local v3    # "offset":I
    :cond_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 2085
    .end local v1    # "j":I
    :cond_5d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mBottomWaveTime:J

    .line 2087
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    check-cast v6, Landroid/opengl/GLSurfaceView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 2088
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mBottomWaveTime:J

    .line 2090
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mDrawEffectFrameCnt:I

    .line 2093
    .end local v0    # "i":I
    .end local v2    # "jmax":I
    .end local v3    # "offset":I
    :cond_74
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mDrawEffectFrameCnt:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mDrawEffectFrameCnt:I

    .line 2094
    return-void
.end method

.method public onMakeFromRight2()V
    .registers 13

    .prologue
    const/high16 v11, 0x40400000

    .line 2098
    const/4 v4, 0x1

    .line 2099
    .local v4, "xSpan":I
    const/4 v5, 0x1

    .line 2101
    .local v5, "ySpan":I
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mDrawEffectFrameCnt:I

    rem-int/lit8 v6, v6, 0x1e

    if-nez v6, :cond_78

    .line 2103
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    if-le v6, v7, :cond_55

    .line 2104
    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    .line 2105
    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    .line 2106
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    sub-int v2, v6, v5

    .line 2114
    .local v2, "jmax":I
    :goto_18
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4024000000000000L

    mul-double/2addr v6, v8

    double-to-int v6, v6

    add-int/lit8 v3, v6, 0xf

    .line 2116
    .local v3, "offset":I
    move v0, v4

    .local v0, "i":I
    :goto_23
    const/16 v6, 0x19

    if-ge v0, v6, :cond_61

    .line 2117
    move v1, v5

    .local v1, "j":I
    :goto_28
    if-ge v1, v2, :cond_5e

    .line 2118
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub1:[F

    sub-int v7, v2, v0

    mul-int/lit8 v7, v7, 0x68

    add-int/2addr v7, v1

    sget-object v8, Lcom/android/internal/policy/impl/keyguard/sec/Value$velocity4;->velocity:[F

    mul-int/lit8 v9, v0, 0x68

    add-int v10, v1, v3

    add-int/2addr v9, v10

    aget v8, v8, v9

    mul-float/2addr v8, v11

    aput v8, v6, v7

    .line 2119
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub2:[F

    sub-int v7, v2, v0

    mul-int/lit8 v7, v7, 0x68

    add-int/2addr v7, v1

    sget-object v8, Lcom/android/internal/policy/impl/keyguard/sec/Value$velocity3;->velocity:[F

    mul-int/lit8 v9, v0, 0x68

    add-int v10, v1, v3

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x3

    aget v8, v8, v9

    mul-float/2addr v8, v11

    aput v8, v6, v7

    .line 2117
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 2108
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "jmax":I
    .end local v3    # "offset":I
    :cond_55
    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    .line 2109
    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    .line 2110
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    sub-int v2, v6, v5

    .restart local v2    # "jmax":I
    goto :goto_18

    .line 2116
    .restart local v0    # "i":I
    .restart local v1    # "j":I
    .restart local v3    # "offset":I
    :cond_5e
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 2122
    .end local v1    # "j":I
    :cond_61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mBottomWaveTime:J

    .line 2124
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    check-cast v6, Landroid/opengl/GLSurfaceView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 2125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mBottomWaveTime:J

    .line 2127
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mDrawEffectFrameCnt:I

    .line 2130
    .end local v0    # "i":I
    .end local v2    # "jmax":I
    .end local v3    # "offset":I
    :cond_78
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mDrawEffectFrameCnt:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mDrawEffectFrameCnt:I

    .line 2131
    return-void
.end method

.method public onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V
    .registers 10
    .param p1, "event"    # Landroid/hardware/scontext/SContextEvent;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 452
    iget-object v2, p1, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    .line 453
    .local v2, "scontext":Landroid/hardware/scontext/SContext;
    invoke-virtual {v2}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v3

    const/16 v4, 0x12

    if-ne v3, v4, :cond_17

    .line 455
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getBounceLongMotionContext()Landroid/hardware/scontext/SContextBounceLongMotion;

    move-result-object v0

    .line 458
    .local v0, "bounceLongMotionContext":Landroid/hardware/scontext/SContextBounceLongMotion;
    invoke-virtual {v0}, Landroid/hardware/scontext/SContextBounceLongMotion;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_b8

    .line 481
    .end local v0    # "bounceLongMotionContext":Landroid/hardware/scontext/SContextBounceLongMotion;
    :cond_17
    :goto_17
    invoke-virtual {v2}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v3

    const/16 v4, 0x11

    if-ne v3, v4, :cond_2a

    .line 482
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getBounceShortMotionContext()Landroid/hardware/scontext/SContextBounceShortMotion;

    move-result-object v1

    .line 484
    .local v1, "bounceShortMotionContext":Landroid/hardware/scontext/SContextBounceShortMotion;
    invoke-virtual {v1}, Landroid/hardware/scontext/SContextBounceShortMotion;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_c4

    .line 495
    .end local v1    # "bounceShortMotionContext":Landroid/hardware/scontext/SContextBounceShortMotion;
    :cond_2a
    :goto_2a
    :pswitch_2a
    return-void

    .line 460
    .restart local v0    # "bounceLongMotionContext":Landroid/hardware/scontext/SContextBounceLongMotion;
    :pswitch_2b
    const-string v3, "CircleUnlockRippleRenderer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BOUNCE_LONG_NONE type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSelectEffect:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 463
    :pswitch_46
    const-string v3, "CircleUnlockRippleRenderer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BOUNCE_LONG_RIGHT type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSelectEffect:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->effectSelect(I)V

    goto :goto_17

    .line 467
    :pswitch_64
    const-string v3, "CircleUnlockRippleRenderer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BOUNCE_LONG_LEFT type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSelectEffect:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->effectSelect(I)V

    goto :goto_17

    .line 471
    :pswitch_82
    const-string v3, "CircleUnlockRippleRenderer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BOUNCE_LONG_UNHAND type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSelectEffect:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mGravityEffectFrameCnt:I

    .line 473
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSelectEffect:I

    if-nez v3, :cond_a5

    .line 474
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSelectEffect:I

    .line 475
    :cond_a5
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSelectEffect:I

    if-ne v3, v7, :cond_17

    .line 476
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSelectEffect:I

    goto/16 :goto_17

    .line 488
    .end local v0    # "bounceLongMotionContext":Landroid/hardware/scontext/SContextBounceLongMotion;
    .restart local v1    # "bounceShortMotionContext":Landroid/hardware/scontext/SContextBounceShortMotion;
    :pswitch_ae
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->effectSelect(I)V

    goto/16 :goto_2a

    .line 491
    :pswitch_b3
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->effectSelect(I)V

    goto/16 :goto_2a

    .line 458
    :pswitch_data_b8
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_46
        :pswitch_64
        :pswitch_82
    .end packed-switch

    .line 484
    :pswitch_data_c4
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_ae
        :pswitch_b3
    .end packed-switch
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 21
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 731
    const-string v2, "CircleUnlockRippleRenderer"

    const-string v3, "onSurfaceChanged"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    const-string v2, "CircleUnlockRippleRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "windowWidth = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", windowHeight = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->prevWidth_sufaceChanged:I

    move/from16 v0, p2

    if-ne v2, v0, :cond_6e

    .line 736
    const-string v2, "CircleUnlockRippleRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prevWidth_sufaceChanged is = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->prevWidth_sufaceChanged:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    :goto_6d
    return-void

    .line 739
    :cond_6e
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->prevWidth_sufaceChanged:I

    .line 741
    move/from16 v0, p2

    move/from16 v1, p3

    if-le v0, v1, :cond_156

    .line 743
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mLandscape:Z

    .line 750
    :goto_7f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mLandscape:Z

    if-eqz v2, :cond_16f

    .line 753
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->intensityForLandscape:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->intensityForRipple:F

    .line 754
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    .line 755
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    .line 757
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->hasSystemNavBar:Z

    if-eqz v2, :cond_d1

    .line 760
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->HDMI_VIEW_HEIGHT_FOR_P4_NOTE_10_1:I

    move/from16 v0, p3

    if-ne v0, v2, :cond_15d

    .line 762
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    .line 763
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->HDMI_WIDOW_HEIGHT_FOR_P4_NOTE_10_1:I

    move/from16 v0, p2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    .line 788
    :cond_d1
    :goto_d1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float v13, v2, v3

    .line 790
    .local v13, "ratio":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->view:[F

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000

    const/4 v12, 0x0

    invoke-static/range {v2 .. v12}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 791
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->proj:[F

    const/high16 v4, 0x42340000

    const v6, 0x3dcccccd

    const/high16 v7, 0x43fa0000

    move-object/from16 v2, p0

    move v5, v13

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->perspectiveM([FFFFF)V

    .line 793
    const/4 v14, 0x0

    .line 794
    .local v14, "translateX":F
    const/4 v15, 0x0

    .line 795
    .local v15, "translateY":F
    const/16 v16, 0x0

    .line 797
    .local v16, "translateZ":F
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mLandscape:Z

    if-eqz v2, :cond_1af

    .line 799
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateXForLandscape:F

    .line 800
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateYForLandscape:F

    .line 801
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateZForLandscape:F

    move/from16 v16, v0

    .line 811
    :goto_119
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->world:[F

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 812
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->view:[F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->world:[F

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 813
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    const/4 v3, 0x0

    move/from16 v0, v16

    invoke-static {v2, v3, v14, v15, v0}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 814
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->proj:[F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 816
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->drawCount:I

    goto/16 :goto_6d

    .line 747
    .end local v13    # "ratio":F
    .end local v14    # "translateX":F
    .end local v15    # "translateY":F
    .end local v16    # "translateZ":F
    :cond_156
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mLandscape:Z

    goto/16 :goto_7f

    .line 767
    :cond_15d
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    .line 768
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    goto/16 :goto_d1

    .line 775
    :cond_16f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->intensityForPortrait:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->intensityForRipple:F

    .line 776
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    .line 777
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    .line 779
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->hasSystemNavBar:Z

    if-eqz v2, :cond_d1

    .line 781
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    .line 782
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    goto/16 :goto_d1

    .line 805
    .restart local v13    # "ratio":F
    .restart local v14    # "translateX":F
    .restart local v15    # "translateY":F
    .restart local v16    # "translateZ":F
    :cond_1af
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateXForPortrait:F

    .line 806
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateYForPortrait:F

    .line 807
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateZForPortrait:F

    move/from16 v16, v0

    goto/16 :goto_119
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 5
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 721
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "onSurfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->prevWidth_sufaceChanged:I

    .line 723
    return-void
.end method

.method public releaseBooster(I)V
    .registers 5
    .param p1, "type"    # I

    .prologue
    const/4 v2, 0x0

    .line 2426
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "releaseBooster"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2428
    if-nez p1, :cond_29

    .line 2430
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->supportedCPUClockTable:[I

    if-eqz v0, :cond_21

    .line 2432
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_1e

    .line 2434
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "cpuMaxClockBooster.release()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2435
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 2438
    :cond_1e
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->supportedCPUClockTable:[I

    .line 2466
    :goto_20
    return-void

    .line 2442
    :cond_21
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "supportedCPUClockTable isn\'t null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 2445
    :cond_29
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4b

    .line 2447
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->supportedGPUFreqTable:[I

    if-eqz v0, :cond_43

    .line 2449
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_40

    .line 2451
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "gpuMaxFreqBooster.release()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2452
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 2455
    :cond_40
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->supportedGPUFreqTable:[I

    goto :goto_20

    .line 2459
    :cond_43
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "supportedGPUFreqTable isn\'t null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 2464
    :cond_4b
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "type is invalid."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method

.method public reset()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1944
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->clearAllEffect()V

    .line 1947
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isTouched:Z

    .line 1949
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->removeDefaultRunnable()V

    .line 1950
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setFalseDefaultEffectFlag()V

    .line 1952
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isRestrictCPUClock:Z

    if-eqz v0, :cond_1a

    .line 1954
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->releaseBooster(I)V

    .line 1957
    :cond_1a
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_22

    .line 1959
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->releaseBooster(I)V

    .line 1962
    :cond_22
    return-void
.end method

.method public screenTurnedOn()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1867
    const-string v1, "CircleUnlockRippleRenderer"

    const-string v2, "screenTurnedOn"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->removeDefaultRunnable()V

    .line 1871
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->calledIsScreenTurnedOn:Z

    .line 1873
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isRestrictCPUClock:Z

    if-eqz v1, :cond_15

    .line 1875
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->acquireBooster(I)V

    .line 1878
    :cond_15
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isRestrictGPUFreq:Z

    if-eqz v1, :cond_1c

    .line 1880
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->acquireBooster(I)V

    .line 1883
    :cond_1c
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_GRAVITY:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v1, v2, :cond_3f

    .line 1884
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1885
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "com.sec.feature.sensorhub"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3f

    .line 1886
    const-string v1, "CircleUnlockRippleRenderer"

    const-string v2, "register SContext"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    const/16 v2, 0x12

    invoke-virtual {v1, p0, v2}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;I)Z

    .line 1891
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_3f
    return-void
.end method

.method public setGravity(I)V
    .registers 2
    .param p1, "_v"    # I

    .prologue
    .line 2057
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gravityEffectType:I

    return-void
.end method

.method public setGravityTexture(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 7
    .param p1, "pRightBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "pLeftBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    .line 1504
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapGravityRight:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    .line 1506
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapGravityRight:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1507
    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapGravityRight:Landroid/graphics/Bitmap;

    .line 1510
    :cond_c
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapGravityRight:Landroid/graphics/Bitmap;

    .line 1511
    const-string v0, "CircleUnlockRippleRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bitmapGravityRight "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapGravityRight:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapGravityLeft:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_37

    .line 1515
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapGravityLeft:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1516
    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapGravityLeft:Landroid/graphics/Bitmap;

    .line 1518
    :cond_37
    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapGravityLeft:Landroid/graphics/Bitmap;

    .line 1519
    const-string v0, "CircleUnlockRippleRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bitmapGravityLeft "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapGravityLeft:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    return-void
.end method

.method public setRippleBackground()V
    .registers 3

    .prologue
    .line 1807
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "setRippleBackground()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setBackground(Z)V

    .line 1809
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mBgChangeCheckArray:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1810
    return-void
.end method

.method public setSoundNum(I)V
    .registers 2
    .param p1, "value"    # I

    .prologue
    .line 1222
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->soundNum:I

    .line 1223
    return-void
.end method

.method public setSoundRID(II)V
    .registers 3
    .param p1, "RDownId"    # I
    .param p2, "RUpId"    # I

    .prologue
    .line 1524
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mRDownId:I

    .line 1525
    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mRUpId:I

    .line 1526
    return-void
.end method

.method public setSoundTime(I)V
    .registers 2
    .param p1, "value"    # I

    .prologue
    .line 1226
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->soundTime:I

    .line 1227
    return-void
.end method

.method public setTexture(Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "pBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1478
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapBG:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    .line 1480
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapBG:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1481
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapBG:Landroid/graphics/Bitmap;

    .line 1484
    :cond_c
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapBG:Landroid/graphics/Bitmap;

    .line 1486
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapBG:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapBG:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mBitmapRatio:F

    .line 1487
    const-string v0, "CircleUnlockRippleRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bitmapBG.width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapBG:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bitmapBG.height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapBG:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    return-void
.end method

.method public setWaterTexture(Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "pBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1492
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    .line 1494
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1495
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    .line 1498
    :cond_c
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    .line 1500
    return-void
.end method

.method public show()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1830
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setSound()V

    .line 1833
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->checkSound()V

    .line 1834
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setRippleVersion()V

    .line 1837
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isFirstTouched:Z

    .line 1838
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setFalseDefaultEffectFlag()V

    .line 1841
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isRestrictCPUClock:Z

    if-eqz v0, :cond_37

    .line 1843
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_25

    .line 1845
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->releaseBooster(I)V

    .line 1846
    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    .line 1849
    :cond_25
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "new cpuMaxClockBooster"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    .line 1853
    :cond_37
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_56

    .line 1855
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_44

    .line 1857
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->releaseBooster(I)V

    .line 1858
    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    .line 1861
    :cond_44
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "new gpuMaxFreqBooster"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    .line 1864
    :cond_56
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .registers 7
    .param p1, "startDelay"    # J
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 1967
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "showUnlockAffordance()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    const-string v0, "CircleUnlockRippleRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calledIsScreenTurnedOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->calledIsScreenTurnedOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->removeDefaultRunnable()V

    .line 1971
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->calledIsScreenTurnedOn:Z

    if-eqz v0, :cond_62

    .line 1973
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->right:I

    iget v2, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->defaultX:F

    .line 1974
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->defaultY:F

    .line 1976
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_54

    .line 1978
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "mDefaultRunnable,  new Runnable()!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer$4;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    .line 2007
    :cond_54
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "mDefaultRunnable, postDelayed()!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2008
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2010
    :cond_62
    return-void
.end method

.method public startLongPressCheck(Landroid/view/View;FFJF)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "mouseX"    # F
    .param p3, "mouseY"    # F
    .param p4, "delay"    # J
    .param p6, "pIntensity"    # F

    .prologue
    .line 1148
    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->tmx:F

    .line 1149
    iput p3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->tmy:F

    .line 1151
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_f

    .line 1153
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer$1;

    invoke-direct {v0, p0, p6}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer$1;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;F)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    .line 1164
    :cond_f
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, p4, p5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1165
    return-void
.end method

.method public startLongPressCheck2(Landroid/view/View;FFJF)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "mouseX"    # F
    .param p3, "mouseY"    # F
    .param p4, "delay"    # J
    .param p6, "pIntensity"    # F

    .prologue
    .line 1169
    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->tmx:F

    .line 1170
    iput p3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->tmy:F

    .line 1172
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_f

    .line 1174
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer$2;

    invoke-direct {v0, p0, p6, p4, p5}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer$2;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;FJ)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    .line 1188
    :cond_f
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, p4, p5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1189
    return-void
.end method

.method public stopLongPressCheck(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1193
    return-void
.end method

.method public updateGravityRippleEffect()V
    .registers 2

    .prologue
    .line 2147
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSelectEffect:I

    packed-switch v0, :pswitch_data_16

    .line 2162
    :goto_5
    return-void

    .line 2150
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->enableRightDirectionEffect()V

    goto :goto_5

    .line 2153
    :pswitch_a
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->disableRightDirectionEffect()V

    goto :goto_5

    .line 2156
    :pswitch_e
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->enableLeftDirectionEffect()V

    goto :goto_5

    .line 2159
    :pswitch_12
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->disableLeftDirectionEffect()V

    goto :goto_5

    .line 2147
    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6
        :pswitch_a
        :pswitch_e
        :pswitch_12
    .end packed-switch
.end method
