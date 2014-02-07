.class public Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;
.super Landroid/opengl/GLSurfaceView;
.source "RippleUnlockView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;


# static fields
.field private static sRippleUnlockView:Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;


# instance fields
.field private final DBG:Z

.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRenderer:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/16 v1, 0x8

    .line 50
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->DBG:Z

    .line 39
    const-string v0, "CircleUnlockRipple"

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->TAG:Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->mContext:Landroid/content/Context;

    .line 53
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->mPowerManager:Landroid/os/PowerManager;

    .line 58
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->mRenderer:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;

    .line 59
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->mRenderer:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;

    const v2, 0x1100001

    const v3, 0x1100030

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setSoundRID(II)V

    .line 61
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->detectOpenGLES20()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 62
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->setEGLContextClientVersion(I)V

    .line 63
    const/16 v5, 0x10

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->setEGLConfigChooser(IIIIII)V

    .line 64
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->mRenderer:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 65
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->setRenderMode(I)V

    .line 66
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 72
    :goto_50
    return-void

    .line 70
    :cond_51
    const-string v0, "WaterEffect"

    const-string v1, "this machine does not support OpenGL ES2.0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50
.end method

.method private detectOpenGLES20()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 85
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 86
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v1

    .line 87
    .local v1, "info":Landroid/content/pm/ConfigurationInfo;
    if-eqz v1, :cond_18

    .line 88
    iget v3, v1, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v4, 0x20000

    if-lt v3, v4, :cond_18

    const/4 v2, 0x1

    .line 90
    :cond_18
    return v2
.end method

.method public static getInstance()Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;
    .registers 1

    .prologue
    .line 81
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->sRippleUnlockView:Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->sRippleUnlockView:Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    if-nez v0, :cond_b

    .line 76
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->sRippleUnlockView:Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    .line 77
    :cond_b
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->sRippleUnlockView:Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    return-object v0
.end method


# virtual methods
.method public cleanUp()V
    .registers 3

    .prologue
    .line 117
    const-string v0, "CircleUnlockRipple"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->mRenderer:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->cleanUp()V

    .line 119
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .registers 3
    .param p1, "region"    # Landroid/graphics/Region;

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public getUnlockDelay()J
    .registers 3

    .prologue
    .line 173
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public handleHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 178
    const-string v0, "CircleUnlockRipple"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleHoverEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->mRenderer:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseMove(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 104
    const-string v1, "CircleUnlockRipple"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleTouchEvent event : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->mRenderer:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseMove(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 106
    .local v0, "result":Z
    if-eqz v0, :cond_24

    .line 108
    :cond_24
    const/4 v1, 0x1

    return v1
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 141
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 202
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    .line 203
    const-string v0, "CircleUnlockRipple"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->mRenderer:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->destroyed()V

    .line 205
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 123
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 127
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 2
    .param p1, "visibility"    # I

    .prologue
    .line 132
    if-nez p1, :cond_5

    .line 133
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->onWindowVisibilityChanged(I)V

    .line 135
    :cond_5
    return-void
.end method

.method public playLockSound()V
    .registers 1

    .prologue
    .line 191
    return-void
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 159
    const-string v0, "CircleUnlockRipple"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->mRenderer:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->reset()V

    .line 161
    const-string v0, "CircleUnlockRipple"

    const-string v1, "requestRender()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->requestRender()V

    .line 163
    return-void
.end method

.method public screenTurnedOn()V
    .registers 3

    .prologue
    .line 167
    const-string v0, "CircleUnlockRipple"

    const-string v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->mRenderer:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->screenTurnedOn()V

    .line 169
    return-void
.end method

.method setBackground()V
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->mRenderer:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setRippleBackground()V

    .line 97
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->requestRender()V

    .line 99
    return-void
.end method

.method public show()V
    .registers 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenWallpaper;->isFlipboardWallpaper(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 147
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->mRenderer:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setRippleBackground()V

    .line 149
    :cond_d
    const-string v0, "CircleUnlockRipple"

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->mRenderer:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->show()V

    .line 153
    const-string v0, "CircleUnlockRipple"

    const-string v1, "requestRender()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->requestRender()V

    .line 155
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .registers 7
    .param p1, "startDelay"    # J
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 185
    const-string v0, "CircleUnlockRipple"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showUnlockAffordance startDelay : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->mRenderer:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->showUnlockAffordance(JLandroid/graphics/Rect;)V

    .line 187
    return-void
.end method