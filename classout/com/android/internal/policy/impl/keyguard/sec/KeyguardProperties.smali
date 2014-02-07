.class public Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;
.super Ljava/lang/Object;
.source "KeyguardProperties.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyguardProperties"

.field private static mIsDirectCallToEcc:Z

.field private static mIsDirectCallToEccChecked:Z

.field private static mIsDirectCallToEccWithQwerty:Z

.field private static mIsDirectCallToEccWithQwertyChecked:Z

.field private static mIsDisplayPlmnEnabledByCsc:Z

.field private static mIsDisplayPlmnEnabledByCscChecked:Z

.field private static mShouldbeDisplaySalesCode:Z

.field private static mShouldbeDisplaySalesCodeChecked:Z

.field private static mSwipeLockBeforeTimeout:Z

.field private static mSwipeLockBeforeTimeoutChecked:Z

.field private static mWipeOutIntExtMemoryDueToUnlockFail:Z

.field private static mWipeOutIntExtMemoryDueToUnlockFailChecked:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 29
    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->mShouldbeDisplaySalesCode:Z

    .line 30
    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->mShouldbeDisplaySalesCodeChecked:Z

    .line 32
    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->mIsDisplayPlmnEnabledByCsc:Z

    .line 33
    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->mIsDisplayPlmnEnabledByCscChecked:Z

    .line 34
    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->mIsDirectCallToEcc:Z

    .line 35
    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->mIsDirectCallToEccChecked:Z

    .line 36
    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->mIsDirectCallToEccWithQwerty:Z

    .line 37
    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->mIsDirectCallToEccWithQwertyChecked:Z

    .line 39
    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->mWipeOutIntExtMemoryDueToUnlockFail:Z

    .line 41
    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->mWipeOutIntExtMemoryDueToUnlockFailChecked:Z

    .line 43
    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->mSwipeLockBeforeTimeout:Z

    .line 45
    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->mSwipeLockBeforeTimeoutChecked:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasNavigationBar()Z
    .registers 4

    .prologue
    .line 464
    const-string v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    .line 465
    .local v2, "windowManager":Landroid/view/IWindowManager;
    const/4 v1, 0x0

    .line 467
    .local v1, "result":Z
    :try_start_b
    invoke-interface {v2}, Landroid/view/IWindowManager;->hasNavigationBar()Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_10

    move-result v1

    .line 471
    :goto_f
    return v1

    .line 468
    :catch_10
    move-exception v0

    .line 469
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public static isAUSFeature()Z
    .registers 3

    .prologue
    .line 198
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, "salesCode":Ljava/lang/String;
    const-string v2, "ro.csc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "CountryCode":Ljava/lang/String;
    const-string v2, "Australia"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_54

    const-string v2, "TEL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_54

    const-string v2, "VAU"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_54

    const-string v2, "HUT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_54

    const-string v2, "BST"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_54

    const-string v2, "OPS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_54

    const-string v2, "OPP"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_54

    const-string v2, "TLP"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_54

    const-string v2, "XSA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 210
    :cond_54
    const/4 v2, 0x1

    .line 213
    :goto_55
    return v2

    :cond_56
    const/4 v2, 0x0

    goto :goto_55
.end method

.method public static isArcMotionEnabled()Z
    .registers 2

    .prologue
    .line 483
    const-string v1, "ro.build.product"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 485
    .local v0, "ProductCode":Ljava/lang/String;
    const-string v1, "flte"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "flteskt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "fltektt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "fltelgt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 486
    :cond_26
    const/4 v1, 0x1

    .line 488
    :goto_27
    return v1

    :cond_28
    const/4 v1, 0x0

    goto :goto_27
.end method

.method public static isAutoWipeFeature()Z
    .registers 3

    .prologue
    .line 492
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 493
    .local v0, "SalesCode":Ljava/lang/String;
    const-string v2, "ro.csc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 495
    .local v1, "countryCode":Ljava/lang/String;
    const-string v2, "USA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 496
    const-string v2, "VZW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 497
    const/4 v2, 0x1

    .line 500
    :goto_1d
    return v2

    :cond_1e
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method public static isCMCCFeature()Z
    .registers 2

    .prologue
    .line 416
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 417
    .local v0, "SalesCode":Ljava/lang/String;
    const-string v1, "CHM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "CHC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 418
    :cond_16
    const/4 v1, 0x1

    .line 420
    :goto_17
    return v1

    :cond_18
    const/4 v1, 0x0

    goto :goto_17
.end method

.method public static isCTCFeature()Z
    .registers 2

    .prologue
    .line 300
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "SalesCode":Ljava/lang/String;
    const-string v1, "CTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 302
    const/4 v1, 0x1

    .line 304
    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public static isCameraSpecialized()Z
    .registers 1

    .prologue
    .line 459
    const/4 v0, 0x0

    return v0
.end method

.method public static isChinaFeature()Z
    .registers 2

    .prologue
    .line 149
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "SalesCode":Ljava/lang/String;
    const-string v1, "CTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    const-string v1, "CHM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    const-string v1, "CHN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    const-string v1, "CHU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    const-string v1, "CHC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    const-string v1, "BRI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 152
    :cond_36
    const/4 v1, 0x1

    .line 154
    :goto_37
    return v1

    :cond_38
    const/4 v1, 0x0

    goto :goto_37
.end method

.method public static isClearCoverClosed()Z
    .registers 4

    .prologue
    .line 167
    const/4 v1, 0x0

    .line 169
    .local v1, "isCoverClosed":Z
    const-string v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    .line 171
    .local v2, "windowManager":Landroid/view/IWindowManager;
    if-eqz v2, :cond_14

    :try_start_d
    invoke-interface {v2}, Landroid/view/IWindowManager;->isCoverOpen()Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_15

    move-result v3

    if-nez v3, :cond_14

    .line 172
    const/4 v1, 0x1

    .line 177
    :cond_14
    :goto_14
    return v1

    .line 174
    :catch_15
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_14
.end method

.method public static isDSDSDevice()Z
    .registers 1

    .prologue
    .line 296
    const/4 v0, 0x0

    return v0
.end method

.method public static isDirectCallToEcc()Z
    .registers 2

    .prologue
    .line 227
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->mIsDirectCallToEccChecked:Z

    if-nez v0, :cond_13

    .line 228
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_LockScreen_DirectCallToEcc"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->mIsDirectCallToEcc:Z

    .line 230
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->mIsDirectCallToEccChecked:Z

    .line 233
    :cond_13
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->mIsDirectCallToEcc:Z

    return v0
.end method

.method public static isDirectCallToEccWithQwerty()Z
    .registers 2

    .prologue
    .line 237
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->mIsDirectCallToEccWithQwertyChecked:Z

    if-nez v0, :cond_13

    .line 238
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_LockScreen_EnableEccKeypadWhenHwKeyPress"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->mIsDirectCallToEccWithQwerty:Z

    .line 240
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->mIsDirectCallToEccWithQwertyChecked:Z

    .line 243
    :cond_13
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->mIsDirectCallToEccWithQwerty:Z

    return v0
.end method

.method public static isDisplayDualImsi(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 181
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "SalesCode":Ljava/lang/String;
    const-string v2, "LGT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 183
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 184
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 185
    const/4 v2, 0x1

    .line 188
    .end local v1    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :goto_1d
    return v2

    :cond_1e
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method public static isDualLCDDevice(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 247
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.dual_lcd"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isDualLCDFolderDevice(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 255
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isDualLCDDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isFolderDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isDualModeDevice()I
    .registers 1

    .prologue
    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method public static isEmergencyCallListEnable()Z
    .registers 2

    .prologue
    .line 131
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "SalesCode":Ljava/lang/String;
    const-string v1, "SKT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "KTT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "LGT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "ANY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 134
    :cond_26
    const/4 v1, 0x1

    .line 136
    :goto_27
    return v1

    :cond_28
    const/4 v1, 0x0

    goto :goto_27
.end method

.method public static isEurMultiSIMDevice()Z
    .registers 1

    .prologue
    .line 326
    const/4 v0, 0x0

    return v0
.end method

.method public static isFolderDevice(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 251
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.folder_type"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFolderOpened(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 259
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 260
    .local v0, "config":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v2, v1, :cond_15

    .line 261
    const-string v2, "KeyguardProperties"

    const-string v3, "isFolderOpened: Folder is opened"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :goto_14
    return v1

    .line 263
    :cond_15
    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_23

    .line 264
    const-string v1, "KeyguardProperties"

    const-string v2, "isFolderOpened: Folder is closed"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_21
    :goto_21
    const/4 v1, 0x0

    goto :goto_14

    .line 265
    :cond_23
    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-nez v1, :cond_21

    .line 266
    const-string v1, "KeyguardProperties"

    const-string v2, "isFolderOpened: HardKeyboard setting is undefined"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method public static isGERFeature()Z
    .registers 3

    .prologue
    .line 428
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 429
    .local v1, "SalesCode":Ljava/lang/String;
    const-string v2, "ro.csc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, "CountryCode":Ljava/lang/String;
    const-string v2, "Germany"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "DBT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 431
    :cond_1c
    const/4 v2, 0x1

    .line 433
    :goto_1d
    return v2

    :cond_1e
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method public static isGestureWithFingerHoverOn()Z
    .registers 1

    .prologue
    .line 424
    const/4 v0, 0x1

    return v0
.end method

.method public static isJapanFeature()Z
    .registers 2

    .prologue
    .line 392
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 394
    .local v0, "SalesCode":Ljava/lang/String;
    const-string v1, "KDI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "DCM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 395
    :cond_16
    const/4 v1, 0x1

    .line 397
    :goto_17
    return v1

    :cond_18
    const/4 v1, 0x0

    goto :goto_17
.end method

.method public static isKeyguardBackupAndRestore(Landroid/content/Context;)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 402
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.android.app.keyguardbackuprestore"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 403
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget-boolean v3, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_e} :catch_12

    if-eqz v3, :cond_11

    .line 404
    const/4 v2, 0x1

    .line 409
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_11
    :goto_11
    return v2

    .line 406
    :catch_12
    move-exception v0

    .line 407
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "KeyguardProperties"

    const-string v4, "package not found"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method public static isKoreaFeature()Z
    .registers 2

    .prologue
    .line 140
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "SalesCode":Ljava/lang/String;
    const-string v1, "SKT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "KTT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "LGT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "ANY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 143
    :cond_26
    const/4 v1, 0x1

    .line 145
    :goto_27
    return v1

    :cond_28
    const/4 v1, 0x0

    goto :goto_27
.end method

.method public static isKoreaPatentIssue(Landroid/app/PendingIntent;)Z
    .registers 4
    .param p0, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 158
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "SalesCode":Ljava/lang/String;
    const-string v1, "SKT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "KTT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "LGT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "ANY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    :cond_26
    const-string v1, "com.sec.android.widgetapp.notificationwidget"

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 161
    const/4 v1, 0x1

    .line 163
    :goto_33
    return v1

    :cond_34
    const/4 v1, 0x0

    goto :goto_33
.end method

.method public static isMultiSIMDevice()Z
    .registers 1

    .prologue
    .line 319
    const/4 v0, 0x0

    return v0
.end method

.method public static isNoServiceDisplayWhenNoSIM()Z
    .registers 1

    .prologue
    .line 192
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isAUSFeature()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 193
    const/4 v0, 0x1

    .line 195
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isPLMNEnable()Z
    .registers 1

    .prologue
    .line 48
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isShouldbeDisplayForSalesCode()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isShouldDisplayPlmnForCsc()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isPresidentialCMASFeature()Z
    .registers 3

    .prologue
    .line 349
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, "SalesCode":Ljava/lang/String;
    const-string v2, "ro.csc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 352
    .local v1, "countryCode":Ljava/lang/String;
    const-string v2, "USA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 353
    const-string v2, "SPR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    const-string v2, "BST"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    const-string v2, "TFN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    const-string v2, "VMU"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    const-string v2, "XAS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 356
    :cond_3c
    const/4 v2, 0x1

    .line 359
    :goto_3d
    return v2

    :cond_3e
    const/4 v2, 0x0

    goto :goto_3d
.end method

.method public static isSIMToastEnabled()Z
    .registers 2

    .prologue
    .line 340
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, "SalesCode":Ljava/lang/String;
    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "TEL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 343
    :cond_16
    const/4 v1, 0x1

    .line 345
    :goto_17
    return v1

    :cond_18
    const/4 v1, 0x0

    goto :goto_17
.end method

.method public static isShortcutDAWithPendingIntent(Landroid/app/PendingIntent;)Z
    .registers 3
    .param p0, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 438
    const-string v0, "com.sec.android.widgetapp.notificationwidget"

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 439
    const/4 v0, 0x1

    .line 441
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isShortcutResize()Z
    .registers 1

    .prologue
    .line 455
    const/4 v0, 0x0

    return v0
.end method

.method public static isShouldDisplayPlmnForCsc()Z
    .registers 2

    .prologue
    .line 217
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->mIsDisplayPlmnEnabledByCscChecked:Z

    if-nez v0, :cond_13

    .line 218
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_LockScreen_DisplayPlmn"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->mIsDisplayPlmnEnabledByCsc:Z

    .line 220
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->mIsDisplayPlmnEnabledByCscChecked:Z

    .line 223
    :cond_13
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->mIsDisplayPlmnEnabledByCsc:Z

    return v0
.end method

.method private static isShouldbeDisplayForSalesCode()Z
    .registers 3

    .prologue
    const/4 v2, 0x1

    .line 53
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->mShouldbeDisplaySalesCodeChecked:Z

    if-nez v1, :cond_ff

    .line 54
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "SalesCode":Ljava/lang/String;
    const-string v1, "TMH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fb

    const-string v1, "PAN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fb

    const-string v1, "HBM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fb

    const-string v1, "EPL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fb

    const-string v1, "SKT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fb

    const-string v1, "KTT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fb

    const-string v1, "LGT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fb

    const-string v1, "CTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fb

    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fb

    const-string v1, "TMB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fb

    const-string v1, "RCS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fb

    const-string v1, "RWC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fb

    const-string v1, "CHR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fb

    const-string v1, "FMC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fb

    const-string v1, "CLN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fb

    const-string v1, "KDO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fb

    const-string v1, "BMC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fb

    const-string v1, "BWA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fb

    const-string v1, "PCM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fb

    const-string v1, "SOL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fb

    const-string v1, "VMC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fb

    const-string v1, "CHM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fb

    const-string v1, "CHU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fb

    const-string v1, "VTR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fb

    const-string v1, "GLW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fb

    const-string v1, "MCT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fb

    const-string v1, "TLS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fb

    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fb

    const-string v1, "SPR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fb

    const-string v1, "CHC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fd

    .line 72
    :cond_fb
    sput-boolean v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->mShouldbeDisplaySalesCode:Z

    .line 74
    :cond_fd
    sput-boolean v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->mShouldbeDisplaySalesCodeChecked:Z

    .line 76
    :cond_ff
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->mShouldbeDisplaySalesCode:Z

    return v1
.end method

.method public static isSupportSPC()Z
    .registers 1

    .prologue
    .line 412
    const/4 v0, 0x0

    return v0
.end method

.method public static isTabletNavigationBarEnabled()Z
    .registers 2

    .prologue
    .line 475
    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, "ProductName":Ljava/lang/String;
    const-string v1, "espresso"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 477
    const/4 v1, 0x1

    .line 479
    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public static isTansparencyGradationInd()Z
    .registers 1

    .prologue
    .line 448
    const/4 v0, 0x0

    return v0
.end method

.method public static isUSAFeature()Z
    .registers 3

    .prologue
    .line 375
    const-string v2, "ro.csc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 376
    .local v1, "countryCode":Ljava/lang/String;
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 378
    .local v0, "SalesCode":Ljava/lang/String;
    const-string v2, "USA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 379
    const-string v2, "VZW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_74

    const-string v2, "ATT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_74

    const-string v2, "SPR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_74

    const-string v2, "BST"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_74

    const-string v2, "VMU"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_74

    const-string v2, "TMB"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_74

    const-string v2, "CRI"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_74

    const-string v2, "VMU"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_74

    const-string v2, "MTR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_74

    const-string v2, "USC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_74

    const-string v2, "TFN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_74

    const-string v2, "XAS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 385
    :cond_74
    const/4 v2, 0x1

    .line 388
    :goto_75
    return v2

    :cond_76
    const/4 v2, 0x0

    goto :goto_75
.end method

.method public static isUSIMPersoFeatureEnable()Z
    .registers 1

    .prologue
    .line 335
    const/4 v0, 0x0

    return v0
.end method

.method public static isVZWFeature()Z
    .registers 3

    .prologue
    .line 363
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, "SalesCode":Ljava/lang/String;
    const-string v2, "ro.csc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 366
    .local v1, "countryCode":Ljava/lang/String;
    const-string v2, "USA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 367
    const-string v2, "VZW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 368
    const/4 v2, 0x1

    .line 371
    :goto_1d
    return v2

    :cond_1e
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method public static shouldShowPopupForDualClock(Landroid/content/Context;)Z
    .registers 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 110
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 113
    .local v3, "tManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "my_profile_enabled"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_7c

    move v2, v4

    .line 115
    .local v2, "isProfileOn":Z
    :goto_17
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dualclock_menu_settings"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_7e

    move v0, v4

    .line 117
    .local v0, "isDualClockOn":Z
    :goto_24
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "homecity_timezone"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_80

    move v1, v4

    .line 120
    .local v1, "isHometimeExist":Z
    :goto_31
    const-string v6, "KeyguardProperties"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "is Romaing on : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n dualClock on : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n is homtime null : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n isProfile on : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v6

    if-eqz v6, :cond_84

    .line 124
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v6

    if-eqz v6, :cond_82

    if-eqz v0, :cond_82

    if-eqz v1, :cond_82

    .line 126
    :cond_7b
    :goto_7b
    return v4

    .end local v0    # "isDualClockOn":Z
    .end local v1    # "isHometimeExist":Z
    .end local v2    # "isProfileOn":Z
    :cond_7c
    move v2, v5

    .line 113
    goto :goto_17

    .restart local v2    # "isProfileOn":Z
    :cond_7e
    move v0, v5

    .line 115
    goto :goto_24

    .restart local v0    # "isDualClockOn":Z
    :cond_80
    move v1, v5

    .line 117
    goto :goto_31

    .restart local v1    # "isHometimeExist":Z
    :cond_82
    move v4, v5

    .line 124
    goto :goto_7b

    .line 126
    :cond_84
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v6

    if-eqz v6, :cond_90

    if-eqz v0, :cond_90

    if-eqz v1, :cond_90

    if-eqz v2, :cond_7b

    :cond_90
    move v4, v5

    goto :goto_7b
.end method

.method public static swipeLockBeforeTimeout()Z
    .registers 3

    .prologue
    const/4 v2, 0x1

    .line 93
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->mSwipeLockBeforeTimeoutChecked:Z

    if-nez v1, :cond_17

    .line 94
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "SalesCode":Ljava/lang/String;
    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 97
    sput-boolean v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->mSwipeLockBeforeTimeout:Z

    .line 100
    :cond_15
    sput-boolean v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->mSwipeLockBeforeTimeoutChecked:Z

    .line 102
    :cond_17
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->mSwipeLockBeforeTimeout:Z

    return v1
.end method

.method public static useIndependentLockTimeout()Z
    .registers 1

    .prologue
    .line 106
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->swipeLockBeforeTimeout()Z

    move-result v0

    return v0
.end method

.method public static wipeInternalExternalSd()Z
    .registers 3

    .prologue
    const/4 v2, 0x1

    .line 80
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->mWipeOutIntExtMemoryDueToUnlockFailChecked:Z

    if-nez v1, :cond_1f

    .line 81
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "SalesCode":Ljava/lang/String;
    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    const-string v1, "DCM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 84
    :cond_1b
    sput-boolean v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->mWipeOutIntExtMemoryDueToUnlockFail:Z

    .line 87
    :cond_1d
    sput-boolean v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->mWipeOutIntExtMemoryDueToUnlockFailChecked:Z

    .line 89
    :cond_1f
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->mWipeOutIntExtMemoryDueToUnlockFail:Z

    return v1
.end method
