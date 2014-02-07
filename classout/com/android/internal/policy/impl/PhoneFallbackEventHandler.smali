.class public Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;
.super Ljava/lang/Object;
.source "PhoneFallbackEventHandler.java"

# interfaces
.implements Landroid/view/FallbackEventHandler;


# static fields
.field private static final BOOSTING_TIMEOUT:I = 0xbb8

.field private static final DEBUG:Z

.field private static TAG:Ljava/lang/String;

.field private static mCPUCoreNumBooster:Landroid/os/DVFSHelper;


# instance fields
.field private final LONG_PRESS_LAUNCH:I

.field private final NO_LAUNCH:I

.field private final SHORT_PRESS_LAUNCH:I

.field mAudioManager:Landroid/media/AudioManager;

.field mContext:Landroid/content/Context;

.field mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLaunchType:I

.field mSamsungZoomKeyController:Lcom/android/internal/policy/impl/sec/SamsungZoomKeyController;

.field mSearchManager:Landroid/app/SearchManager;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    const-string v0, "PhoneFallbackEventHandler"

    sput-object v0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    .line 520
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mCPUCoreNumBooster:Landroid/os/DVFSHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->NO_LAUNCH:I

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->SHORT_PRESS_LAUNCH:I

    .line 55
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->LONG_PRESS_LAUNCH:I

    .line 56
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mLaunchType:I

    .line 72
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    .line 73
    return-void
.end method

.method private handleMediaKeyEvent(Landroid/view/KeyEvent;)V
    .registers 7
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 442
    const-string v2, "audio"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 444
    .local v0, "audioService":Landroid/media/IAudioService;
    if-eqz v0, :cond_2a

    .line 446
    :try_start_c
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    .line 453
    :goto_f
    return-void

    .line 447
    :catch_10
    move-exception v1

    .line 448
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchMediaKeyEvent threw exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 451
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2a
    sget-object v2, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "Unable to find IAudioService for media key event."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method private launchUserDefinedApp(I)Z
    .registers 12
    .param p1, "mode"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 466
    const/4 v3, 0x0

    .line 467
    .local v3, "launch_app":Ljava/lang/String;
    const/4 v4, 0x0

    .line 468
    .local v4, "package_index":I
    const/4 v5, 0x0

    .line 469
    .local v5, "package_name":Ljava/lang/String;
    const/4 v0, 0x0

    .line 471
    .local v0, "activity_name":Ljava/lang/String;
    packed-switch p1, :pswitch_data_7c

    .line 485
    :goto_9
    if-eqz v3, :cond_21

    .line 486
    const/16 v8, 0x2f

    const/4 v9, 0x0

    :try_start_e
    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 487
    const/4 v8, 0x0

    invoke-virtual {v3, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 488
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_20
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_20} :catch_4e

    move-result-object v0

    .line 497
    :cond_21
    if-eqz v5, :cond_2b

    const-string v8, ""

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5a

    .line 498
    :cond_2b
    sget-object v6, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v8, "None pkg name"

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 514
    :goto_33
    :pswitch_33
    return v6

    .line 475
    :pswitch_34
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "short_press_app"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 477
    goto :goto_9

    .line 479
    :pswitch_41
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "long_press_app"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    .line 490
    :catch_4e
    move-exception v1

    .line 491
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    sget-object v6, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v8, "There is no launch app!"

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const/4 v5, 0x0

    .line 493
    const/4 v0, 0x0

    move v6, v7

    .line 494
    goto :goto_33

    .line 502
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_5a
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 503
    .local v2, "i":Landroid/content/Intent;
    const/high16 v7, 0x30000000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 505
    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 507
    :try_start_69
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 508
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_71
    .catch Landroid/content/ActivityNotFoundException; {:try_start_69 .. :try_end_71} :catch_72

    goto :goto_33

    .line 509
    :catch_72
    move-exception v1

    .line 510
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    sget-object v7, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v8, "Activity to be assigned by the key is not found."

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 471
    nop

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_33
        :pswitch_34
        :pswitch_41
    .end packed-switch
.end method

.method private performCPUCoreNumBoost()V
    .registers 8

    .prologue
    .line 523
    sget-object v0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mCPUCoreNumBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_26

    .line 524
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string v2, "KEY_CAMERA_LAUNCH_BOOST"

    const/16 v3, 0xe

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mCPUCoreNumBooster:Landroid/os/DVFSHelper;

    .line 526
    sget-object v0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mCPUCoreNumBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v6

    .line 527
    .local v6, "coreTable":[I
    if-eqz v6, :cond_26

    .line 528
    sget-object v0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mCPUCoreNumBooster:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    const/4 v2, 0x0

    aget v2, v6, v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 531
    .end local v6    # "coreTable":[I
    :cond_26
    sget-object v0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mCPUCoreNumBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_31

    .line 532
    sget-object v0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mCPUCoreNumBooster:Landroid/os/DVFSHelper;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 534
    :cond_31
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 85
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 86
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 89
    .local v1, "keyCode":I
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isCameraSpecialized()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 90
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getSamsungZoomKeyController()Lcom/android/internal/policy/impl/sec/SamsungZoomKeyController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/policy/impl/sec/SamsungZoomKeyController;->handleKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 91
    const/4 v2, 0x1

    .line 99
    :goto_19
    return v2

    .line 96
    :cond_1a
    if-nez v0, :cond_21

    .line 97
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_19

    .line 99
    :cond_21
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_19
.end method

.method getAudioManager()Landroid/media/AudioManager;
    .registers 3

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_10

    .line 432
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mAudioManager:Landroid/media/AudioManager;

    .line 434
    :cond_10
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method getKeyguardManager()Landroid/app/KeyguardManager;
    .registers 3

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_10

    .line 425
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 427
    :cond_10
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method getSamsungZoomKeyController()Lcom/android/internal/policy/impl/sec/SamsungZoomKeyController;
    .registers 3

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mSamsungZoomKeyController:Lcom/android/internal/policy/impl/sec/SamsungZoomKeyController;

    if-nez v0, :cond_d

    .line 458
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungZoomKeyController;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/sec/SamsungZoomKeyController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mSamsungZoomKeyController:Lcom/android/internal/policy/impl/sec/SamsungZoomKeyController;

    .line 460
    :cond_d
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mSamsungZoomKeyController:Lcom/android/internal/policy/impl/sec/SamsungZoomKeyController;

    return-object v0
.end method

.method getSearchManager()Landroid/app/SearchManager;
    .registers 3

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mSearchManager:Landroid/app/SearchManager;

    if-nez v0, :cond_10

    .line 410
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mSearchManager:Landroid/app/SearchManager;

    .line 412
    :cond_10
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mSearchManager:Landroid/app/SearchManager;

    return-object v0
.end method

.method getTelephonyManager()Landroid/telephony/TelephonyManager;
    .registers 3

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_10

    .line 417
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 420
    :cond_10
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 18
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 108
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v12

    .line 110
    .local v12, "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v14

    .line 112
    .local v14, "scanCode":I
    sparse-switch p1, :sswitch_data_25c

    .line 306
    :cond_d
    :goto_d
    const/4 v1, 0x0

    :goto_e
    return v1

    .line 119
    :sswitch_f
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v1

    const/high16 v3, -0x80000000

    move-object/from16 v0, p2

    invoke-virtual {v1, v0, v3}, Landroid/media/AudioManager;->handleKeyDown(Landroid/view/KeyEvent;I)V

    .line 120
    const/4 v1, 0x1

    goto :goto_e

    .line 128
    :sswitch_1c
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-eqz v1, :cond_28

    .line 129
    const/4 v1, 0x1

    goto :goto_e

    .line 134
    :cond_28
    :sswitch_28
    const/16 v1, 0x4f

    move/from16 v0, p1

    if-ne v0, v1, :cond_3d

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryPBAPhase()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 136
    sget-object v1, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v3, " KeyEvent.KEYCODE_HEADSETHOOK blocked..."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v1, 0x1

    goto :goto_e

    .line 146
    :cond_3d
    :sswitch_3d
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    .line 147
    const/4 v1, 0x1

    goto :goto_e

    .line 151
    :sswitch_44
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-nez v1, :cond_d

    if-eqz v12, :cond_d

    .line 154
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_5d

    .line 155
    move-object/from16 v0, p2

    invoke-virtual {v12, v0, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 180
    :cond_5b
    :goto_5b
    const/4 v1, 0x1

    goto :goto_e

    .line 156
    :cond_5d
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-eqz v1, :cond_5b

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 157
    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V

    .line 158
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 160
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 161
    .local v2, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasNumericKeyboard(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_b5

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasFolderTypeFeature(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 163
    const-string v1, "android.intent.action.dialer.ACTION_DISPLAY_LAST_NUMBER"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    new-instance v10, Landroid/content/ComponentName;

    const-string v1, "com.android.contacts"

    const-string v3, "com.android.contacts.activities.DialtactsActivity"

    invoke-direct {v10, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .local v10, "cn":Landroid/content/ComponentName;
    invoke-virtual {v2, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 167
    const-string v1, "display_last_call_number"

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 172
    .end local v10    # "cn":Landroid/content/ComponentName;
    :goto_a2
    const/high16 v1, 0x10000000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 174
    :try_start_a7
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 175
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_af
    .catch Landroid/content/ActivityNotFoundException; {:try_start_a7 .. :try_end_af} :catch_b0

    goto :goto_5b

    .line 176
    :catch_b0
    move-exception v13

    .line 177
    .local v13, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->startCallActivity()V

    goto :goto_5b

    .line 169
    .end local v13    # "e":Landroid/content/ActivityNotFoundException;
    :cond_b5
    const-string v1, "android.intent.action.VOICE_COMMAND"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_a2

    .line 185
    .end local v2    # "intent":Landroid/content/Intent;
    :sswitch_bb
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isCameraSpecialized()Z

    move-result v1

    if-eqz v1, :cond_f2

    .line 186
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_d

    .line 187
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isMirrorLessCameraSpecialized()Z

    move-result v1

    if-eqz v1, :cond_d0

    .line 188
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->performCPUCoreNumBoost()V

    .line 190
    :cond_d0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 191
    new-instance v2, Landroid/content/Intent;

    const-string v1, "android.intent.action.CAMERA_BUTTON"

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 192
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.KEY_EVENT"

    move-object/from16 v0, p2

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 193
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 195
    const/4 v1, 0x1

    goto/16 :goto_e

    .line 200
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_f2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-nez v1, :cond_d

    if-eqz v12, :cond_d

    .line 203
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_10c

    .line 204
    move-object/from16 v0, p2

    invoke-virtual {v12, v0, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 215
    :cond_109
    :goto_109
    const/4 v1, 0x1

    goto/16 :goto_e

    .line 205
    :cond_10c
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-eqz v1, :cond_109

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_109

    .line 206
    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V

    .line 207
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 208
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 210
    new-instance v2, Landroid/content/Intent;

    const-string v1, "android.intent.action.CAMERA_BUTTON"

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 211
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.KEY_EVENT"

    move-object/from16 v0, p2

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 212
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_109

    .line 220
    .end local v2    # "intent":Landroid/content/Intent;
    :sswitch_145
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isCameraSpecialized()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 221
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_d

    .line 222
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isMirrorLessCameraSpecialized()Z

    move-result v1

    if-eqz v1, :cond_15a

    .line 223
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->performCPUCoreNumBoost()V

    .line 225
    :cond_15a
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 226
    new-instance v2, Landroid/content/Intent;

    const-string v1, "android.intent.action.CAMERA_BUTTON"

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 227
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.KEY_EVENT"

    move-object/from16 v0, p2

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 228
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 230
    const/4 v1, 0x1

    goto/16 :goto_e

    .line 239
    .end local v2    # "intent":Landroid/content/Intent;
    :sswitch_17c
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-nez v1, :cond_d

    if-eqz v12, :cond_d

    .line 244
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1cb

    .line 245
    move-object/from16 v0, p2

    invoke-virtual {v12, v0, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 246
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mLaunchType:I

    .line 254
    :cond_196
    :goto_196
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mLaunchType:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1c8

    .line 255
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mLaunchType:I

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->launchUserDefinedApp(I)Z

    move-result v1

    if-nez v1, :cond_1c5

    .line 256
    sget-object v1, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "There are no apps defined by the user key"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    new-instance v2, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 259
    .restart local v2    # "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 260
    const-string v1, "com.sec.android.app.popupuireceiver"

    const-string v3, "com.sec.android.app.popupuireceiver.popupCustomizeKey"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    :try_start_1bd
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 264
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1c5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1bd .. :try_end_1c5} :catch_1eb

    .line 269
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1c5
    :goto_1c5
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mLaunchType:I

    .line 271
    :cond_1c8
    const/4 v1, 0x1

    goto/16 :goto_e

    .line 247
    :cond_1cb
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-eqz v1, :cond_196

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_196

    .line 248
    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V

    .line 249
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 250
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 251
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mLaunchType:I

    goto :goto_196

    .line 265
    .restart local v2    # "intent":Landroid/content/Intent;
    :catch_1eb
    move-exception v13

    .line 266
    .restart local v13    # "e":Landroid/content/ActivityNotFoundException;
    sget-object v1, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "popupuireceiver is not found."

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c5

    .line 276
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v13    # "e":Landroid/content/ActivityNotFoundException;
    :sswitch_1f4
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-nez v1, :cond_d

    if-eqz v12, :cond_d

    .line 279
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_20d

    .line 280
    move-object/from16 v0, p2

    invoke-virtual {v12, v0, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto/16 :goto_d

    .line 281
    :cond_20d
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-eqz v1, :cond_d

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 282
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    .line 283
    .local v11, "config":Landroid/content/res/Configuration;
    iget v1, v11, Landroid/content/res/Configuration;->keyboard:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_22f

    iget v1, v11, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_d

    .line 286
    :cond_22f
    new-instance v2, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEARCH_LONG_PRESS"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 287
    .restart local v2    # "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 289
    :try_start_23b
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 290
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 291
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getSearchManager()Landroid/app/SearchManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/SearchManager;->stopSearch()V

    .line 292
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 296
    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V
    :try_end_255
    .catch Landroid/content/ActivityNotFoundException; {:try_start_23b .. :try_end_255} :catch_258

    .line 297
    const/4 v1, 0x1

    goto/16 :goto_e

    .line 298
    :catch_258
    move-exception v1

    goto/16 :goto_d

    .line 112
    nop

    :sswitch_data_25c
    .sparse-switch
        0x5 -> :sswitch_44
        0x18 -> :sswitch_f
        0x19 -> :sswitch_f
        0x1b -> :sswitch_bb
        0x4f -> :sswitch_28
        0x54 -> :sswitch_1f4
        0x55 -> :sswitch_1c
        0x56 -> :sswitch_3d
        0x57 -> :sswitch_3d
        0x58 -> :sswitch_3d
        0x59 -> :sswitch_3d
        0x5a -> :sswitch_3d
        0x5b -> :sswitch_28
        0x7e -> :sswitch_1c
        0x7f -> :sswitch_1c
        0x82 -> :sswitch_3d
        0xa4 -> :sswitch_f
        0xed -> :sswitch_17c
        0xf1 -> :sswitch_f
        0xf2 -> :sswitch_f
        0xf3 -> :sswitch_f
        0xf4 -> :sswitch_145
    .end sparse-switch
.end method

.method onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 10
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 313
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 314
    .local v1, "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_d

    .line 315
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 318
    :cond_d
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v2

    .line 320
    .local v2, "scanCode":I
    sparse-switch p1, :sswitch_data_9a

    :cond_14
    move v3, v4

    .line 394
    :cond_15
    :goto_15
    return v3

    .line 327
    :sswitch_16
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_15

    .line 328
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 330
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_15

    .line 331
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v4

    const/high16 v5, -0x80000000

    invoke-virtual {v4, p2, v5}, Landroid/media/AudioManager;->handleKeyUp(Landroid/view/KeyEvent;I)V

    goto :goto_15

    .line 339
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :sswitch_32
    const/16 v4, 0x4f

    if-ne p1, v4, :cond_44

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryPBAPhase()Z

    move-result v4

    if-eqz v4, :cond_44

    .line 341
    sget-object v4, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v5, " KeyEvent.KEYCODE_HEADSETHOOK blocked..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 355
    :cond_44
    :sswitch_44
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_15

    .line 360
    :sswitch_48
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v5

    if-nez v5, :cond_14

    .line 363
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_15

    goto :goto_15

    .line 370
    :sswitch_5f
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v5

    if-nez v5, :cond_14

    .line 373
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_15

    .line 374
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->startCallActivity()V

    goto :goto_15

    .line 381
    :sswitch_79
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v5

    if-nez v5, :cond_14

    .line 384
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mLaunchType:I

    if-ne v5, v3, :cond_15

    .line 385
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mLaunchType:I

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->launchUserDefinedApp(I)Z

    move-result v5

    if-nez v5, :cond_96

    .line 386
    sget-object v5, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v6, "There are no apps defined by the user key"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_96
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mLaunchType:I

    goto/16 :goto_15

    .line 320
    :sswitch_data_9a
    .sparse-switch
        0x5 -> :sswitch_5f
        0x18 -> :sswitch_16
        0x19 -> :sswitch_16
        0x1b -> :sswitch_48
        0x4f -> :sswitch_32
        0x55 -> :sswitch_44
        0x56 -> :sswitch_44
        0x57 -> :sswitch_44
        0x58 -> :sswitch_44
        0x59 -> :sswitch_44
        0x5a -> :sswitch_44
        0x5b -> :sswitch_44
        0x7e -> :sswitch_44
        0x7f -> :sswitch_44
        0x82 -> :sswitch_44
        0xa4 -> :sswitch_16
        0xed -> :sswitch_79
        0xf1 -> :sswitch_16
        0xf2 -> :sswitch_16
        0xf3 -> :sswitch_16
    .end sparse-switch
.end method

.method public preDispatchKeyEvent(Landroid/view/KeyEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, p1, v1}, Landroid/media/AudioManager;->preDispatchKeyEvent(Landroid/view/KeyEvent;I)V

    .line 81
    return-void
.end method

.method sendCloseSystemWindows()V
    .registers 3

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 439
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    .line 77
    return-void
.end method

.method startCallActivity()V
    .registers 5

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 399
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_BUTTON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 400
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 402
    :try_start_f
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_14
    .catch Landroid/content/ActivityNotFoundException; {:try_start_f .. :try_end_14} :catch_15

    .line 406
    :goto_14
    return-void

    .line 403
    :catch_15
    move-exception v0

    .line 404
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-object v2, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "No activity found for android.intent.action.CALL_BUTTON."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method
