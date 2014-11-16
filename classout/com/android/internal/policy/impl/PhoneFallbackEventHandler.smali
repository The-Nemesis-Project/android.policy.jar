.class public Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;
.super Ljava/lang/Object;
.source "PhoneFallbackEventHandler.java"

# interfaces
.implements Landroid/view/FallbackEventHandler;


# static fields
.field private static final DEBUG:Z

.field private static TAG:Ljava/lang/String;


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
    .line 44
    const-string v0, "PhoneFallbackEventHandler"

    sput-object v0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->NO_LAUNCH:I

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->SHORT_PRESS_LAUNCH:I

    .line 50
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->LONG_PRESS_LAUNCH:I

    .line 51
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mLaunchType:I

    .line 67
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    .line 68
    return-void
.end method

.method private handleMediaKeyEvent(Landroid/view/KeyEvent;)V
    .registers 7
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 396
    const-string v2, "audio"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 398
    .local v0, "audioService":Landroid/media/IAudioService;
    if-eqz v0, :cond_2a

    .line 400
    :try_start_c
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    .line 407
    :goto_f
    return-void

    .line 401
    :catch_10
    move-exception v1

    .line 402
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

    .line 405
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

    .line 411
    const/4 v3, 0x0

    .line 412
    .local v3, "launch_app":Ljava/lang/String;
    const/4 v4, 0x0

    .line 413
    .local v4, "package_index":I
    const/4 v5, 0x0

    .line 414
    .local v5, "package_name":Ljava/lang/String;
    const/4 v0, 0x0

    .line 416
    .local v0, "activity_name":Ljava/lang/String;
    packed-switch p1, :pswitch_data_7c

    .line 430
    :goto_9
    if-eqz v3, :cond_21

    .line 431
    const/16 v8, 0x2f

    const/4 v9, 0x0

    :try_start_e
    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 432
    const/4 v8, 0x0

    invoke-virtual {v3, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 433
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_20
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_20} :catch_4e

    move-result-object v0

    .line 442
    :cond_21
    if-eqz v5, :cond_2b

    const-string v8, ""

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5a

    .line 443
    :cond_2b
    sget-object v6, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v8, "None pkg name"

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 459
    :goto_33
    :pswitch_33
    return v6

    .line 420
    :pswitch_34
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "short_press_app"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 422
    goto :goto_9

    .line 424
    :pswitch_41
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "long_press_app"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    .line 435
    :catch_4e
    move-exception v1

    .line 436
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    sget-object v6, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v8, "There is no launch app!"

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const/4 v5, 0x0

    .line 438
    const/4 v0, 0x0

    move v6, v7

    .line 439
    goto :goto_33

    .line 447
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_5a
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 448
    .local v2, "i":Landroid/content/Intent;
    const/high16 v7, 0x30000000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 450
    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 452
    :try_start_69
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 453
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_71
    .catch Landroid/content/ActivityNotFoundException; {:try_start_69 .. :try_end_71} :catch_72

    goto :goto_33

    .line 454
    :catch_72
    move-exception v1

    .line 455
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    sget-object v7, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v8, "Activity to be assigned by the key is not found."

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 416
    nop

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_33
        :pswitch_34
        :pswitch_41
    .end packed-switch
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 81
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 84
    .local v1, "keyCode":I
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isCameraSpecialized()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 85
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getSamsungZoomKeyController()Lcom/android/internal/policy/impl/sec/SamsungZoomKeyController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/policy/impl/sec/SamsungZoomKeyController;->handleKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 86
    const/4 v2, 0x1

    .line 94
    :goto_19
    return v2

    .line 91
    :cond_1a
    if-nez v0, :cond_21

    .line 92
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_19

    .line 94
    :cond_21
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_19
.end method

.method getAudioManager()Landroid/media/AudioManager;
    .registers 3

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_10

    .line 386
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mAudioManager:Landroid/media/AudioManager;

    .line 388
    :cond_10
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method getKeyguardManager()Landroid/app/KeyguardManager;
    .registers 3

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_10

    .line 379
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 381
    :cond_10
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method getSamsungZoomKeyController()Lcom/android/internal/policy/impl/sec/SamsungZoomKeyController;
    .registers 3

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mSamsungZoomKeyController:Lcom/android/internal/policy/impl/sec/SamsungZoomKeyController;

    if-nez v0, :cond_d

    .line 466
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungZoomKeyController;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/sec/SamsungZoomKeyController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mSamsungZoomKeyController:Lcom/android/internal/policy/impl/sec/SamsungZoomKeyController;

    .line 468
    :cond_d
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mSamsungZoomKeyController:Lcom/android/internal/policy/impl/sec/SamsungZoomKeyController;

    return-object v0
.end method

.method getSearchManager()Landroid/app/SearchManager;
    .registers 3

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mSearchManager:Landroid/app/SearchManager;

    if-nez v0, :cond_10

    .line 364
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mSearchManager:Landroid/app/SearchManager;

    .line 366
    :cond_10
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mSearchManager:Landroid/app/SearchManager;

    return-object v0
.end method

.method getTelephonyManager()Landroid/telephony/TelephonyManager;
    .registers 3

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_10

    .line 371
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 374
    :cond_10
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 16
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/high16 v4, 0x10000000

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x1

    .line 103
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v10

    .line 105
    .local v10, "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    sparse-switch p1, :sswitch_data_1ac

    .line 264
    :cond_f
    :goto_f
    return v6

    .line 109
    :sswitch_10
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    const/high16 v2, -0x80000000

    invoke-virtual {v0, p2, v2}, Landroid/media/AudioManager;->handleKeyDown(Landroid/view/KeyEvent;I)V

    move v6, v12

    .line 110
    goto :goto_f

    .line 119
    :sswitch_1b
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_27

    move v6, v12

    .line 120
    goto :goto_f

    .line 125
    :cond_27
    :sswitch_27
    const/16 v0, 0x4f

    if-ne p1, v0, :cond_3a

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryPBAPhase()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 127
    sget-object v0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v2, " KeyEvent.KEYCODE_HEADSETHOOK blocked..."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v12

    .line 128
    goto :goto_f

    .line 138
    :cond_3a
    :sswitch_3a
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    move v6, v12

    .line 139
    goto :goto_f

    .line 143
    :sswitch_3f
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_f

    if-eqz v10, :cond_f

    .line 146
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_56

    .line 147
    invoke-virtual {v10, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :cond_54
    :goto_54
    move v6, v12

    .line 161
    goto :goto_f

    .line 148
    :cond_56
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-virtual {v10, p2}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 149
    invoke-virtual {v10, p2}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V

    .line 150
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 152
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VOICE_COMMAND"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 153
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 155
    :try_start_74
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 156
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_7c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_74 .. :try_end_7c} :catch_7d

    goto :goto_54

    .line 157
    :catch_7d
    move-exception v11

    .line 158
    .local v11, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->startCallActivity()V

    goto :goto_54

    .line 166
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v11    # "e":Landroid/content/ActivityNotFoundException;
    :sswitch_82
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isBlockKey(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 170
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_f

    if-eqz v10, :cond_f

    .line 173
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_a2

    .line 174
    invoke-virtual {v10, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :cond_9f
    :goto_9f
    move v6, v12

    .line 192
    goto/16 :goto_f

    .line 175
    :cond_a2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_9f

    invoke-virtual {v10, p2}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 176
    invoke-virtual {v10, p2}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V

    .line 177
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 178
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 181
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportCameraQuickShot()Z

    move-result v0

    if-eqz v0, :cond_cc

    .line 182
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.sec.android.app.camera.QuickLauncher"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 183
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_9f

    .line 185
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_cc
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.CAMERA_BUTTON"

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 186
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 187
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    move-object v4, v3

    move-object v5, v3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_9f

    .line 197
    .end local v1    # "intent":Landroid/content/Intent;
    :sswitch_e4
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_f

    if-eqz v10, :cond_f

    .line 202
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_12c

    .line 203
    invoke-virtual {v10, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 204
    iput v12, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mLaunchType:I

    .line 212
    :cond_fb
    :goto_fb
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mLaunchType:I

    if-ne v0, v2, :cond_129

    .line 213
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mLaunchType:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->launchUserDefinedApp(I)Z

    move-result v0

    if-nez v0, :cond_127

    .line 214
    sget-object v0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v2, "There are no apps defined by the user key"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 217
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 218
    const-string v0, "com.sec.android.app.popupuireceiver"

    const-string v2, "com.sec.android.app.popupuireceiver.popupCustomizeKey"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    :try_start_11f
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 222
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_127
    .catch Landroid/content/ActivityNotFoundException; {:try_start_11f .. :try_end_127} :catch_146

    .line 227
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_127
    :goto_127
    iput v6, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mLaunchType:I

    :cond_129
    move v6, v12

    .line 229
    goto/16 :goto_f

    .line 205
    :cond_12c
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_fb

    invoke-virtual {v10, p2}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_fb

    .line 206
    invoke-virtual {v10, p2}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V

    .line 207
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 208
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 209
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mLaunchType:I

    goto :goto_fb

    .line 223
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_146
    move-exception v11

    .line 224
    .restart local v11    # "e":Landroid/content/ActivityNotFoundException;
    sget-object v0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v2, "popupuireceiver is not found."

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_127

    .line 234
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v11    # "e":Landroid/content/ActivityNotFoundException;
    :sswitch_14f
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_f

    if-eqz v10, :cond_f

    .line 237
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_166

    .line 238
    invoke-virtual {v10, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto/16 :goto_f

    .line 239
    :cond_166
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v10, p2}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 240
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    .line 241
    .local v9, "config":Landroid/content/res/Configuration;
    iget v0, v9, Landroid/content/res/Configuration;->keyboard:I

    if-eq v0, v12, :cond_184

    iget v0, v9, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v2, :cond_f

    .line 244
    :cond_184
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEARCH_LONG_PRESS"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 245
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 247
    :try_start_18e
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 248
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 249
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getSearchManager()Landroid/app/SearchManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/SearchManager;->stopSearch()V

    .line 250
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 254
    invoke-virtual {v10, p2}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V
    :try_end_1a6
    .catch Landroid/content/ActivityNotFoundException; {:try_start_18e .. :try_end_1a6} :catch_1a9

    move v6, v12

    .line 255
    goto/16 :goto_f

    .line 256
    :catch_1a9
    move-exception v0

    goto/16 :goto_f

    .line 105
    :sswitch_data_1ac
    .sparse-switch
        0x5 -> :sswitch_3f
        0x18 -> :sswitch_10
        0x19 -> :sswitch_10
        0x1b -> :sswitch_82
        0x4f -> :sswitch_27
        0x54 -> :sswitch_14f
        0x55 -> :sswitch_1b
        0x56 -> :sswitch_3a
        0x57 -> :sswitch_3a
        0x58 -> :sswitch_3a
        0x59 -> :sswitch_3a
        0x5a -> :sswitch_3a
        0x5b -> :sswitch_27
        0x7e -> :sswitch_1b
        0x7f -> :sswitch_1b
        0x82 -> :sswitch_3a
        0xa4 -> :sswitch_10
        0xde -> :sswitch_3a
        0xee -> :sswitch_e4
    .end sparse-switch
.end method

.method onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 9
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 271
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 272
    .local v1, "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_d

    .line 273
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 276
    :cond_d
    sparse-switch p1, :sswitch_data_96

    :cond_10
    move v2, v3

    .line 348
    :cond_11
    :goto_11
    return v2

    .line 280
    :sswitch_12
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_11

    .line 281
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 283
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_11

    .line 284
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v3

    const/high16 v4, -0x80000000

    invoke-virtual {v3, p2, v4}, Landroid/media/AudioManager;->handleKeyUp(Landroid/view/KeyEvent;I)V

    goto :goto_11

    .line 292
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :sswitch_2e
    const/16 v3, 0x4f

    if-ne p1, v3, :cond_40

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryPBAPhase()Z

    move-result v3

    if-eqz v3, :cond_40

    .line 294
    sget-object v3, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v4, " KeyEvent.KEYCODE_HEADSETHOOK blocked..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 309
    :cond_40
    :sswitch_40
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_11

    .line 314
    :sswitch_44
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v4

    if-nez v4, :cond_10

    .line 317
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_11

    goto :goto_11

    .line 324
    :sswitch_5b
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v4

    if-nez v4, :cond_10

    .line 327
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_11

    .line 328
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->startCallActivity()V

    goto :goto_11

    .line 335
    :sswitch_75
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v4

    if-nez v4, :cond_10

    .line 338
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mLaunchType:I

    if-ne v4, v2, :cond_11

    .line 339
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mLaunchType:I

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->launchUserDefinedApp(I)Z

    move-result v4

    if-nez v4, :cond_92

    .line 340
    sget-object v4, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v5, "There are no apps defined by the user key"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_92
    iput v3, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mLaunchType:I

    goto/16 :goto_11

    .line 276
    :sswitch_data_96
    .sparse-switch
        0x5 -> :sswitch_5b
        0x18 -> :sswitch_12
        0x19 -> :sswitch_12
        0x1b -> :sswitch_44
        0x4f -> :sswitch_2e
        0x55 -> :sswitch_40
        0x56 -> :sswitch_40
        0x57 -> :sswitch_40
        0x58 -> :sswitch_40
        0x59 -> :sswitch_40
        0x5a -> :sswitch_40
        0x5b -> :sswitch_40
        0x7e -> :sswitch_40
        0x7f -> :sswitch_40
        0x82 -> :sswitch_40
        0xa4 -> :sswitch_12
        0xde -> :sswitch_40
        0xee -> :sswitch_75
    .end sparse-switch
.end method

.method public preDispatchKeyEvent(Landroid/view/KeyEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, p1, v1}, Landroid/media/AudioManager;->preDispatchKeyEvent(Landroid/view/KeyEvent;I)V

    .line 76
    return-void
.end method

.method sendCloseSystemWindows()V
    .registers 3

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 393
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    .line 72
    return-void
.end method

.method startCallActivity()V
    .registers 5

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 353
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_BUTTON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 354
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 356
    :try_start_f
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_14
    .catch Landroid/content/ActivityNotFoundException; {:try_start_f .. :try_end_14} :catch_15

    .line 360
    :goto_14
    return-void

    .line 357
    :catch_15
    move-exception v0

    .line 358
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-object v2, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "No activity found for android.intent.action.CALL_BUTTON."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method
