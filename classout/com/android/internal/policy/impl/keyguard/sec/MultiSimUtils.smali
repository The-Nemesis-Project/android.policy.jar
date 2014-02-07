.class public Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;
.super Ljava/lang/Object;
.source "MultiSimUtils.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final DUALSIMSLOT:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "MultiSimUtils"

.field private static final PORTRAIT_WALLPAPER_IMAGE_PATH:[Ljava/lang/String;

.field private static final PORTRAIT_WALLPAPER_IMAGE_PATH_DATABASE:[Ljava/lang/String;

.field private static final PORTRAIT_WALLPAPER_RIPPLE_IMAGE_PATH:[Ljava/lang/String;

.field private static final PORTRAIT_WALLPAPER_RIPPLE_IMAGE_PATH_DATABASE:[Ljava/lang/String;

.field public static final SIMSLOT1:I = 0x0

.field public static final SIMSLOT2:I = 0x1

.field public static final SIMSLOT3:I = 0x2

.field public static final SIMSLOT4:I = 0x3

.field public static final SIMSLOT5:I = 0x4

.field public static final UNKNOWN:I = -0x1

.field private static mCurrentPukLockSlot:I

.field private static mCurrnetPinLockSlot:I

.field private static mOldCurrentVoiceCall:I

.field private static mPINPUKRequest:Z

.field private static mPINPUKSlot:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v0, -0x1

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    sput v0, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mCurrnetPinLockSlot:I

    .line 40
    sput v0, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mCurrentPukLockSlot:I

    .line 43
    sput-boolean v2, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mPINPUKRequest:Z

    .line 47
    sput v2, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mPINPUKSlot:I

    .line 52
    sput v2, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mOldCurrentVoiceCall:I

    .line 54
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper.jpg"

    aput-object v1, v0, v2

    const-string v1, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper_2.jpg"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->PORTRAIT_WALLPAPER_IMAGE_PATH:[Ljava/lang/String;

    .line 58
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper_ripple.jpg"

    aput-object v1, v0, v2

    const-string v1, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper_ripple_2.jpg"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->PORTRAIT_WALLPAPER_RIPPLE_IMAGE_PATH:[Ljava/lang/String;

    .line 62
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "lockscreen_wallpaper_path_ripple"

    aput-object v1, v0, v2

    const-string v1, "lockscreen_wallpaper_path_ripple_2"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->PORTRAIT_WALLPAPER_RIPPLE_IMAGE_PATH_DATABASE:[Ljava/lang/String;

    .line 65
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "lockscreen_wallpaper_path"

    aput-object v1, v0, v2

    const-string v1, "lockscreen_wallpaper_path_2"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->PORTRAIT_WALLPAPER_IMAGE_PATH_DATABASE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SimRefreshCheck(Landroid/content/Context;)Z
    .registers 2
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 400
    const/4 v0, 0x0

    return v0
.end method

.method public static appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "simSlot"    # I

    .prologue
    .line 259
    move-object v0, p0

    .line 264
    .local v0, "str":Ljava/lang/String;
    if-eqz p1, :cond_1a

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 267
    :cond_1a
    return-object v0
.end method

.method public static getActiveSIMCount(Landroid/content/Context;)I
    .registers 6
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 150
    const/4 v0, 0x0

    .line 152
    .local v0, "mSimCount":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "phone1_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_11

    .line 153
    add-int/lit8 v0, v0, 0x1

    .line 155
    :cond_11
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "phone2_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_1f

    .line 156
    add-int/lit8 v0, v0, 0x1

    .line 160
    :cond_1f
    const-string v1, "MultiSimUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inserted SIM card count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return v0
.end method

.method public static getCurrentPinLockSlot()I
    .registers 3

    .prologue
    .line 202
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isCTCFeature()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 203
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getPINPUKSlot()I

    move-result v0

    .line 209
    :goto_a
    return v0

    .line 207
    :cond_b
    const-string v0, "MultiSimUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentPinLockSlot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mCurrnetPinLockSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    sget v0, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mCurrnetPinLockSlot:I

    goto :goto_a
.end method

.method public static getCurrentPukLockSlot()I
    .registers 3

    .prologue
    .line 234
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isCTCFeature()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 235
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getPINPUKSlot()I

    move-result v0

    .line 241
    :goto_a
    return v0

    .line 239
    :cond_b
    const-string v0, "MultiSimUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentPukLockSlot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mCurrentPukLockSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    sget v0, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mCurrentPukLockSlot:I

    goto :goto_a
.end method

.method public static getCurrentSimState()Lcom/android/internal/telephony/IccCardConstants$State;
    .registers 1

    .prologue
    .line 315
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getPINPUKRequest()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 316
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getPINRequest()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 317
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 322
    :goto_e
    return-object v0

    .line 318
    :cond_f
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getPUKRequest()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 319
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_e

    .line 322
    :cond_18
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_e
.end method

.method public static getCurrentVoiceCall()I
    .registers 4

    .prologue
    .line 100
    const-string v1, "persist.radio.calldefault.simid"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "sim":Ljava/lang/String;
    const-string v1, "MultiSimUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentVoiceCall = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static getCurrentWallpaper(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 69
    const-string v2, "ril.MSIMM"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "mSimMode":Ljava/lang/String;
    const/4 v1, 0x0

    .line 73
    .local v1, "ret":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getSIMCount()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_59

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->PORTRAIT_WALLPAPER_IMAGE_PATH_DATABASE:[Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getCurrentVoiceCall()I

    move-result v4

    aget-object v3, v3, v4

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    const-string v2, "MultiSimUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "2 sim inserted getCurrentWallpaper = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    if-nez v1, :cond_40

    .line 78
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->PORTRAIT_WALLPAPER_IMAGE_PATH:[Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getCurrentVoiceCall()I

    move-result v3

    aget-object v1, v2, v3

    .line 94
    :cond_40
    :goto_40
    const-string v2, "MultiSimUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentWallpaper = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-object v1

    .line 80
    :cond_59
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_91

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->PORTRAIT_WALLPAPER_IMAGE_PATH_DATABASE:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    const-string v2, "MultiSimUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSimMode = 1, getCurrentWallpaper = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    if-nez v1, :cond_40

    .line 84
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->PORTRAIT_WALLPAPER_IMAGE_PATH:[Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getCurrentVoiceCall()I

    move-result v3

    aget-object v1, v2, v3

    goto :goto_40

    .line 86
    :cond_91
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->PORTRAIT_WALLPAPER_IMAGE_PATH_DATABASE:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    const-string v2, "MultiSimUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSimMode = 0, inserted getCurrentWallpaper = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    if-nez v1, :cond_40

    .line 89
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->PORTRAIT_WALLPAPER_IMAGE_PATH:[Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getCurrentVoiceCall()I

    move-result v3

    aget-object v1, v2, v3

    goto :goto_40
.end method

.method public static getDualModePINPUKRequest()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 415
    const-string v4, "gsm.sim.state"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, "mCDMAstate":Ljava/lang/String;
    const-string v4, "gsm.sim.state2"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 419
    .local v1, "mGSMstate":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isDualModeDevice()I

    move-result v4

    if-ne v4, v3, :cond_36

    .line 420
    const-string v4, "PIN_REQUIRED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_34

    const-string v4, "PUK_REQUIRED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_34

    const-string v4, "PIN_REQUIRED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_34

    const-string v4, "PUK_REQUIRED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_35

    :cond_34
    move v2, v3

    .line 431
    :cond_35
    :goto_35
    return v2

    .line 428
    :cond_36
    sget-boolean v4, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mPINPUKRequest:Z

    if-eqz v4, :cond_35

    move v2, v3

    .line 429
    goto :goto_35
.end method

.method public static getDualModePINPUKRequest(Landroid/content/Context;)Z
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 437
    const-string v5, "gsm.sim.state"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 438
    .local v1, "mCDMAstate":Ljava/lang/String;
    const-string v5, "gsm.sim.state2"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 441
    .local v2, "mGSMstate":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isDualModeDevice()I

    move-result v5

    if-ne v5, v3, :cond_6f

    .line 442
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_3c

    move v0, v3

    .line 443
    .local v0, "airPlaneEnabled":Z
    :goto_21
    const-string v5, "MultiSimUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "airPlaneEnabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    if-eqz v0, :cond_3e

    .line 463
    .end local v0    # "airPlaneEnabled":Z
    :cond_3b
    :goto_3b
    return v4

    :cond_3c
    move v0, v4

    .line 442
    goto :goto_21

    .line 448
    .restart local v0    # "airPlaneEnabled":Z
    :cond_3e
    const-string v5, "PIN_REQUIRED"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5e

    const-string v5, "PUK_REQUIRED"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5e

    const-string v5, "PIN_REQUIRED"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5e

    const-string v5, "PUK_REQUIRED"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_67

    .line 450
    :cond_5e
    const-string v4, "MultiSimUtils"

    const-string v5, "getDualModePINPUKRequest : true"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 452
    goto :goto_3b

    .line 454
    :cond_67
    const-string v3, "MultiSimUtils"

    const-string v5, "getDualModePINPUKRequest : false"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 460
    .end local v0    # "airPlaneEnabled":Z
    :cond_6f
    sget-boolean v5, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mPINPUKRequest:Z

    if-eqz v5, :cond_3b

    move v4, v3

    .line 461
    goto :goto_3b
.end method

.method public static getPINPUKRequest()Z
    .registers 1

    .prologue
    .line 184
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isCTCFeature()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 185
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getDualModePINPUKRequest()Z

    move-result v0

    .line 188
    :goto_a
    return v0

    :cond_b
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getPINRequest()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getPUKRequest()Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_17
    const/4 v0, 0x1

    goto :goto_a

    :cond_19
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static getPINPUKRequest(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 193
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isCTCFeature()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 194
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getDualModePINPUKRequest(Landroid/content/Context;)Z

    move-result v0

    .line 197
    :goto_a
    return v0

    :cond_b
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getPINRequest()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getPUKRequest()Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_17
    const/4 v0, 0x1

    goto :goto_a

    :cond_19
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static getPINPUKSlot()I
    .registers 6

    .prologue
    const/4 v5, 0x1

    .line 469
    const-string v2, "ril.ICC_TYPE"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 470
    .local v0, "mCDMAtype":Ljava/lang/String;
    const-string v2, "ril.ICC2_TYPE"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 473
    .local v1, "mGSMtype":Ljava/lang/String;
    const-string v2, "MultiSimUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPINPUKSlot : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mPINPUKSlot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isDualModeDevice()I

    move-result v2

    if-ne v2, v5, :cond_40

    .line 476
    const-string v2, "3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3d

    const-string v2, "4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 478
    :cond_3d
    const/4 v2, 0x0

    sput v2, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mPINPUKSlot:I

    .line 486
    :cond_40
    :goto_40
    const-string v2, "MultiSimUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPINPUKSlot return : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mPINPUKSlot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    sget v2, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mPINPUKSlot:I

    return v2

    .line 480
    :cond_5d
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6d

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 482
    :cond_6d
    sput v5, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mPINPUKSlot:I

    goto :goto_40
.end method

.method public static getPINRequest()Z
    .registers 5

    .prologue
    .line 118
    const/4 v2, -0x1

    sput v2, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mCurrnetPinLockSlot:I

    .line 119
    const/4 v0, 0x0

    .local v0, "simSlot":I
    :goto_4
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getSimSlotCount()I

    move-result v2

    if-ge v0, v2, :cond_47

    .line 120
    const-string v2, "gsm.sim.state"

    invoke-static {v2, v0}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "simState":Ljava/lang/String;
    const-string v2, "MultiSimUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInsertedSimNum() : simSlot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", simState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-string v2, "PIN_REQUIRED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 124
    sput v0, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mCurrnetPinLockSlot:I

    .line 125
    const/4 v2, 0x1

    .line 128
    .end local v1    # "simState":Ljava/lang/String;
    :goto_43
    return v2

    .line 119
    .restart local v1    # "simState":Ljava/lang/String;
    :cond_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 128
    .end local v1    # "simState":Ljava/lang/String;
    :cond_47
    const/4 v2, 0x0

    goto :goto_43
.end method

.method public static getPUKRequest()Z
    .registers 5

    .prologue
    .line 245
    const/4 v2, -0x1

    sput v2, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mCurrentPukLockSlot:I

    .line 246
    const/4 v0, 0x0

    .local v0, "simSlot":I
    :goto_4
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getSimSlotCount()I

    move-result v2

    if-ge v0, v2, :cond_47

    .line 247
    const-string v2, "gsm.sim.state"

    invoke-static {v2, v0}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, "simState":Ljava/lang/String;
    const-string v2, "MultiSimUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInsertedSimNum() : simSlot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", simState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const-string v2, "PUK_REQUIRED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 251
    sput v0, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mCurrentPukLockSlot:I

    .line 252
    const/4 v2, 0x1

    .line 255
    .end local v1    # "simState":Ljava/lang/String;
    :goto_43
    return v2

    .line 246
    .restart local v1    # "simState":Ljava/lang/String;
    :cond_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 255
    .end local v1    # "simState":Ljava/lang/String;
    :cond_47
    const/4 v2, 0x0

    goto :goto_43
.end method

.method public static getSIMCount()I
    .registers 6

    .prologue
    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, "mSimCount":I
    const/4 v1, 0x0

    .local v1, "simSlot":I
    :goto_2
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getSimSlotCount()I

    move-result v3

    if-ge v1, v3, :cond_43

    .line 135
    const-string v3, "ril.ICC_TYPE"

    invoke-static {v3, v1}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, "simSlotState":Ljava/lang/String;
    const-string v3, "MultiSimUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getInsertedSimNum() : simSlot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", simState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    .line 139
    add-int/lit8 v0, v0, 0x1

    .line 134
    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 144
    .end local v2    # "simSlotState":Ljava/lang/String;
    :cond_43
    const-string v3, "MultiSimUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inserted SIM card count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return v0
.end method

.method public static getSimPinRetry()I
    .registers 5

    .prologue
    .line 279
    const/4 v1, 0x0

    .line 281
    .local v1, "result":I
    :try_start_1
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getCurrentPinLockSlot()I

    move-result v2

    if-lez v2, :cond_3a

    .line 282
    const-string v2, "phone2"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getSimPinRetry()I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_49

    move-result v1

    .line 292
    :goto_15
    const-string v2, "MultiSimUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSimPinRetry = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " counnt on slot:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mCurrnetPinLockSlot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    return v1

    .line 285
    :cond_3a
    :try_start_3a
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getSimPinRetry()I
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_47} :catch_49

    move-result v1

    goto :goto_15

    .line 288
    :catch_49
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15
.end method

.method public static getSimPukRetry()I
    .registers 5

    .prologue
    .line 297
    const/4 v1, 0x0

    .line 299
    .local v1, "result":I
    :try_start_1
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getCurrentPukLockSlot()I

    move-result v2

    if-lez v2, :cond_3a

    .line 300
    const-string v2, "phone2"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getSimPukRetry()I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_49

    move-result v1

    .line 310
    :goto_15
    const-string v2, "MultiSimUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSimPukRetry = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " count on slot:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mCurrnetPinLockSlot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    return v1

    .line 303
    :cond_3a
    :try_start_3a
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getSimPukRetry()I
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_47} :catch_49

    move-result v1

    goto :goto_15

    .line 306
    :catch_49
    move-exception v0

    .line 307
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15
.end method

.method public static getSimSlotCount()I
    .registers 2

    .prologue
    .line 274
    const-string v0, "ro.multisim.simslotcount"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getWhichSIMOn(Landroid/content/Context;)I
    .registers 6
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 167
    const/4 v0, 0x0

    .line 170
    .local v0, "mSimCount":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "phone1_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v4, :cond_10

    .line 171
    const/4 v0, 0x1

    .line 173
    :cond_10
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "phone2_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v4, :cond_1d

    .line 174
    const/4 v0, 0x0

    .line 178
    :cond_1d
    const-string v1, "MultiSimUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inserted SIM card count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return v0
.end method

.method public static isChangedVoiceCall()Z
    .registers 4

    .prologue
    .line 108
    sget v1, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mOldCurrentVoiceCall:I

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getCurrentVoiceCall()I

    move-result v2

    if-eq v1, v2, :cond_38

    const/4 v0, 0x1

    .line 110
    .local v0, "ret":Z
    :goto_9
    const-string v1, "MultiSimUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isChangedVoiceCall oldstate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mOldCurrentVoiceCall:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", new = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getCurrentVoiceCall()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getCurrentVoiceCall()I

    move-result v1

    sput v1, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mOldCurrentVoiceCall:I

    .line 112
    return v0

    .line 108
    .end local v0    # "ret":Z
    :cond_38
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isMultiSIMDevice()Z
    .registers 1

    .prologue
    .line 213
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v0

    return v0
.end method

.method public static isPlmnEnabled()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 217
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 230
    :cond_8
    :goto_8
    return v0

    .line 224
    :cond_9
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->isMultiSIMDevice()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 226
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getSIMCount()I

    move-result v2

    if-gt v2, v0, :cond_8

    move v0, v1

    .line 228
    goto :goto_8

    :cond_17
    move v0, v1

    .line 230
    goto :goto_8
.end method

.method public static setPINPUKRequest(Z)V
    .registers 4
    .param p0, "state"    # Z

    .prologue
    .line 404
    sput-boolean p0, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mPINPUKRequest:Z

    .line 405
    const-string v0, "MultiSimUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPINPUKRequest : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mPINPUKRequest:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    return-void
.end method

.method public static setPINPUKSlot(I)V
    .registers 4
    .param p0, "slot"    # I

    .prologue
    .line 409
    const-string v0, "MultiSimUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPINPUKSlot : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    sput p0, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mPINPUKSlot:I

    .line 411
    return-void
.end method

.method public static supplyPin(Ljava/lang/String;)Z
    .registers 4
    .param p0, "mPin"    # Ljava/lang/String;

    .prologue
    .line 327
    const/4 v1, 0x0

    .line 329
    .local v1, "result":Z
    :try_start_1
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getCurrentPinLockSlot()I

    move-result v2

    if-lez v2, :cond_16

    .line 330
    const-string v2, "phone2"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/ITelephony;->supplyPin(Ljava/lang/String;)Z

    move-result v1

    .line 340
    :goto_15
    return v1

    .line 333
    :cond_16
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/ITelephony;->supplyPin(Ljava/lang/String;)Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_23} :catch_25

    move-result v1

    goto :goto_15

    .line 336
    :catch_25
    move-exception v0

    .line 337
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15
.end method

.method public static supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p0, "mPuk"    # Ljava/lang/String;
    .param p1, "mPin"    # Ljava/lang/String;

    .prologue
    .line 344
    const/4 v1, 0x0

    .line 346
    .local v1, "result":Z
    :try_start_1
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getCurrentPukLockSlot()I

    move-result v2

    if-lez v2, :cond_16

    .line 347
    const-string v2, "phone2"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p0, p1}, Lcom/android/internal/telephony/ITelephony;->supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 357
    :goto_15
    return v1

    .line 350
    :cond_16
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p0, p1}, Lcom/android/internal/telephony/ITelephony;->supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_23} :catch_25

    move-result v1

    goto :goto_15

    .line 353
    :catch_25
    move-exception v0

    .line 354
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15
.end method
