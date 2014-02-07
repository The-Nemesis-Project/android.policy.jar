.class public Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;
.super Ljava/lang/Object;
.source "ContextualWidgetMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$4;,
        Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;,
        Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;
    }
.end annotation


# static fields
.field static final APPWIDGET_HOST_ID:I = 0x4b455947

.field private static final DBG:Z = true

.field private static final MSG_FM_RADIO_WIDGET_ADDED:I = 0x1310

.field private static final MSG_FM_RADIO_WIDGET_REMOVED:I = 0x131a

.field private static final MSG_MISSED_EVENT_ADDED:I = 0x12c0

.field private static final MSG_MISSED_EVENT_REMOVED:I = 0x12ca

.field private static final MSG_MUSIC_WIDGET_ADDED:I = 0x12d4

.field private static final MSG_MUSIC_WIDGET_REMOVED:I = 0x12de

.field private static final MSG_REMOTE_WIDGET_ADDED:I = 0x12e8

.field private static final MSG_REMOTE_WIDGET_REMOVED:I = 0x12f2

.field private static final MSG_ROAMING_PLAY_STATE_CHANGED:I = 0x1324

.field private static final MSG_SEC_MUSIC_WIDGET_ADDED:I = 0x12fc

.field private static final MSG_SEC_MUSIC_WIDGET_REMOVED:I = 0x1306

.field private static final TAG:Ljava/lang/String; = "ContexualWidgetMonitor"

.field private static final VOICEMAIL_NOTIFICATION:I = 0x5

.field private static sInstance:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;


# instance fields
.field private final CONTEXTUAL_WIDGET_RESET_DELAY:J

.field private final FM_RADIO_WIDGET_HIDE:Ljava/lang/String;

.field private final FM_RADIO_WIDGET_SHOW:Ljava/lang/String;

.field private final MISSED_EVENT_ADDED:Ljava/lang/String;

.field private final MISSED_EVENT_REMOVED:Ljava/lang/String;

.field private final MMS_PACKAGE:Ljava/lang/String;

.field private final MUSIC_WIDGET_HIDE:Ljava/lang/String;

.field private final MUSIC_WIDGET_SHOW:Ljava/lang/String;

.field private final PHONE_PACKAGE:Ljava/lang/String;

.field private final REMOTE_ADDED:Ljava/lang/String;

.field private final REMOTE_REMOVED:Ljava/lang/String;

.field private final SEC_MUSIC_WIDGET_HIDE:Ljava/lang/String;

.field private final SEC_MUSIC_WIDGET_SHOW:Ljava/lang/String;

.field private mAlreadyAddedWidgetId:I

.field private mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallbacks:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;

.field private mContext:Landroid/content/Context;

.field private mDefaultFMRadioWidget:Landroid/content/ComponentName;

.field private mDefaultMissedWidget:Landroid/content/ComponentName;

.field private mDefaultMusicWidget:Landroid/content/ComponentName;

.field private mDefaultRemoteWidget:Landroid/content/ComponentName;

.field private mDefaultSecMusicWidget:Landroid/content/ComponentName;

.field private final mHandler:Landroid/os/Handler;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mResetContextualWidgetRunnable:Ljava/lang/Runnable;

.field private mShowMissedWidgetBecauseOfRoaming:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 288
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const-string v3, "com.android.phone"

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->PHONE_PACKAGE:Ljava/lang/String;

    .line 79
    const-string v3, "com.android.mms"

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->MMS_PACKAGE:Ljava/lang/String;

    .line 81
    const-string v3, "com.android.server.NotificationManagerService.NotificationArrived"

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->MISSED_EVENT_ADDED:Ljava/lang/String;

    .line 83
    const-string v3, "com.android.server.NotificationManagerService.NotificationRemoved"

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->MISSED_EVENT_REMOVED:Ljava/lang/String;

    .line 85
    const-string v3, "com.sec.android.app.music.intent.action.SHOW_CONTEXTUAL_WIDGET"

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->MUSIC_WIDGET_SHOW:Ljava/lang/String;

    .line 87
    const-string v3, "com.sec.android.app.music.intent.action.HIDE_CONTEXTUAL_WIDGET"

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->MUSIC_WIDGET_HIDE:Ljava/lang/String;

    .line 89
    const-string v3, "com.android.internal.policy.impl.keyguard.sec.REMOTE_ADDED"

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->REMOTE_ADDED:Ljava/lang/String;

    .line 91
    const-string v3, "com.android.internal.policy.impl.keyguard.sec.REMOTE_REMOVED"

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->REMOTE_REMOVED:Ljava/lang/String;

    .line 93
    const-string v3, "com.samsung.music.intent.action.SHOW_CONTEXTUAL_WIDGET"

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->SEC_MUSIC_WIDGET_SHOW:Ljava/lang/String;

    .line 95
    const-string v3, "com.samsung.music.intent.action.HIDE_CONTEXTUAL_WIDGET"

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->SEC_MUSIC_WIDGET_HIDE:Ljava/lang/String;

    .line 97
    const-string v3, "com.sec.android.app.fm.intent.action.SHOW_CONTEXTUAL_WIDGET"

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->FM_RADIO_WIDGET_SHOW:Ljava/lang/String;

    .line 99
    const-string v3, "com.sec.android.app.fm.intent.action.HIDE_CONTEXTUAL_WIDGET"

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->FM_RADIO_WIDGET_HIDE:Ljava/lang/String;

    .line 137
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 247
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$2;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;

    .line 284
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mAlreadyAddedWidgetId:I

    .line 286
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mShowMissedWidgetBecauseOfRoaming:Z

    .line 552
    const-wide/16 v3, 0x12c

    iput-wide v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->CONTEXTUAL_WIDGET_RESET_DELAY:J

    .line 554
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$3;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$3;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mResetContextualWidgetRunnable:Ljava/lang/Runnable;

    .line 289
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mContext:Landroid/content/Context;

    .line 290
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v3, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 292
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->wipeContextualWidgets()V

    .line 294
    new-instance v3, Landroid/appwidget/AppWidgetHost;

    const v4, 0x4b455947

    invoke-direct {v3, p1, v4}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 295
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 298
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 299
    .local v2, "res":Landroid/content/res/Resources;
    new-instance v3, Landroid/content/ComponentName;

    const v4, 0x10409c5

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x10409c6

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mDefaultMissedWidget:Landroid/content/ComponentName;

    .line 304
    new-instance v3, Landroid/content/ComponentName;

    const v4, 0x10409c7

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x10409c8

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mDefaultMusicWidget:Landroid/content/ComponentName;

    .line 309
    new-instance v3, Landroid/content/ComponentName;

    const v4, 0x10409c9

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x10409ca

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mDefaultRemoteWidget:Landroid/content/ComponentName;

    .line 314
    new-instance v3, Landroid/content/ComponentName;

    const v4, 0x10409cf

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x10409d0

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mDefaultSecMusicWidget:Landroid/content/ComponentName;

    .line 319
    new-instance v3, Landroid/content/ComponentName;

    const v4, 0x10409d1

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x10409d2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mDefaultFMRadioWidget:Landroid/content/ComponentName;

    .line 323
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 324
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "com.android.server.NotificationManagerService.NotificationArrived"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 325
    const-string v3, "com.android.server.NotificationManagerService.NotificationRemoved"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 326
    const-string v3, "com.sec.android.app.music.intent.action.SHOW_CONTEXTUAL_WIDGET"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 327
    const-string v3, "com.sec.android.app.music.intent.action.HIDE_CONTEXTUAL_WIDGET"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 328
    const-string v3, "com.android.internal.policy.impl.keyguard.sec.REMOTE_ADDED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 329
    const-string v3, "com.android.internal.policy.impl.keyguard.sec.REMOTE_REMOVED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 330
    const-string v3, "com.samsung.music.intent.action.SHOW_CONTEXTUAL_WIDGET"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 331
    const-string v3, "com.samsung.music.intent.action.HIDE_CONTEXTUAL_WIDGET"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 332
    const-string v3, "com.sec.android.app.fm.intent.action.SHOW_CONTEXTUAL_WIDGET"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 333
    const-string v3, "com.sec.android.app.fm.intent.action.HIDE_CONTEXTUAL_WIDGET"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 334
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 335
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 337
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 338
    .local v1, "pkgFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 339
    const-string v3, "package"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 340
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 341
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->isNationalRoamingPlay()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mShowMissedWidgetBecauseOfRoaming:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mShowMissedWidgetBecauseOfRoaming:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->handleMissedEventUpdate()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->handleMusicWidgetUpdate(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->handleRemoteWidgetUpdate(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->handleSecMusicWidgetUpdate(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->handleFMRadioWidgetUpdate(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;

    return-object v0
.end method

.method private addContextualWidget(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V
    .registers 4
    .param p1, "type"    # Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;

    .prologue
    .line 427
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$4;->$SwitchMap$com$android$internal$policy$impl$keyguard$sec$ContextualWidgetMonitor$ContextualWidget:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2a

    .line 446
    :goto_b
    return-void

    .line 429
    :pswitch_c
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mDefaultMissedWidget:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->appWidget(Landroid/content/ComponentName;)V

    goto :goto_b

    .line 432
    :pswitch_12
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mDefaultMusicWidget:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->appWidget(Landroid/content/ComponentName;)V

    goto :goto_b

    .line 435
    :pswitch_18
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mDefaultRemoteWidget:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->appWidget(Landroid/content/ComponentName;)V

    goto :goto_b

    .line 438
    :pswitch_1e
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mDefaultSecMusicWidget:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->appWidget(Landroid/content/ComponentName;)V

    goto :goto_b

    .line 441
    :pswitch_24
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mDefaultFMRadioWidget:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->appWidget(Landroid/content/ComponentName;)V

    goto :goto_b

    .line 427
    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_c
        :pswitch_12
        :pswitch_18
        :pswitch_1e
        :pswitch_24
    .end packed-switch
.end method

.method private appWidget(Landroid/content/ComponentName;)V
    .registers 9
    .param p1, "widgetComponentName"    # Landroid/content/ComponentName;

    .prologue
    .line 501
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->getWidgetId(Landroid/content/ComponentName;)I

    move-result v2

    .line 502
    .local v2, "widgetId":I
    if-eqz v2, :cond_12

    .line 503
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;

    if-eqz v3, :cond_f

    .line 504
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;

    invoke-interface {v3, v2}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;->moveToContextualWidget(I)V

    .line 505
    :cond_f
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mAlreadyAddedWidgetId:I

    .line 531
    :goto_11
    return-void

    .line 508
    :cond_12
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mAlreadyAddedWidgetId:I

    .line 512
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->getContextualWidgetId(Landroid/content/ComponentName;)I

    move-result v0

    .line 514
    .local v0, "contextualWidgetId":I
    if-nez v0, :cond_26

    .line 515
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v3}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    .line 517
    :try_start_21
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v3, v0, p1}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_26
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_26} :catch_41

    .line 526
    :cond_26
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->removeContextualWidget(I)Z

    .line 527
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->addContextualWidget(I)Z

    .line 529
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mResetContextualWidgetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 530
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mResetContextualWidgetRunnable:Ljava/lang/Runnable;

    const-wide/16 v5, 0x12c

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_11

    .line 518
    :catch_41
    move-exception v1

    .line 519
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "ContexualWidgetMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error when trying to bind default AppWidget: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v3, v0}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    goto :goto_11
.end method

.method private getContextualWidgetId(Landroid/content/ComponentName;)I
    .registers 8
    .param p1, "widgetComponentName"    # Landroid/content/ComponentName;

    .prologue
    const/4 v3, 0x0

    .line 471
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getContextualWidgets()[I

    move-result-object v0

    .line 472
    .local v0, "contextualWidgetIds":[I
    if-nez v0, :cond_a

    .line 481
    :cond_9
    :goto_9
    return v3

    .line 474
    :cond_a
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    array-length v4, v0

    if-ge v1, v4, :cond_9

    .line 475
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    aget v5, v0, v1

    invoke-virtual {v4, v5}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    .line 477
    .local v2, "widgetInfo":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v2, :cond_23

    iget-object v4, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 478
    aget v3, v0, v1

    goto :goto_9

    .line 474
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 396
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->sInstance:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    if-nez v0, :cond_b

    .line 397
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->sInstance:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    .line 399
    :cond_b
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->sInstance:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    return-object v0
.end method

.method private getWidgetId(Landroid/content/ComponentName;)I
    .registers 8
    .param p1, "widgetComponentName"    # Landroid/content/ComponentName;

    .prologue
    const/4 v3, 0x0

    .line 486
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getAppWidgets()[I

    move-result-object v1

    .line 487
    .local v1, "widgetIds":[I
    if-nez v1, :cond_a

    .line 495
    :cond_9
    :goto_9
    return v3

    .line 489
    :cond_a
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    array-length v4, v1

    if-ge v0, v4, :cond_9

    .line 490
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    aget v5, v1, v0

    invoke-virtual {v4, v5}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    .line 491
    .local v2, "widgetInfo":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v2, :cond_23

    iget-object v4, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 492
    aget v3, v1, v0

    goto :goto_9

    .line 489
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method private handleFMRadioWidgetUpdate(Z)V
    .registers 3
    .param p1, "added"    # Z

    .prologue
    .line 380
    if-eqz p1, :cond_8

    .line 381
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;->fmRadio:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->addContextualWidget(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V

    .line 385
    :goto_7
    return-void

    .line 383
    :cond_8
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;->fmRadio:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->removeContextualWidget(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V

    goto :goto_7
.end method

.method private handleMissedEventUpdate()V
    .registers 2

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->isMissedEvent()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 389
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;->missedWidget:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->addContextualWidget(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V

    .line 393
    :goto_b
    return-void

    .line 391
    :cond_c
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;->missedWidget:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->removeContextualWidget(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V

    goto :goto_b
.end method

.method private handleMusicWidgetUpdate(Z)V
    .registers 3
    .param p1, "isPlaying"    # Z

    .prologue
    .line 364
    if-eqz p1, :cond_8

    .line 365
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;->musicWidget:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->addContextualWidget(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V

    .line 369
    :goto_7
    return-void

    .line 367
    :cond_8
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;->musicWidget:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->removeContextualWidget(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V

    goto :goto_7
.end method

.method private handleRemoteWidgetUpdate(Z)V
    .registers 3
    .param p1, "added"    # Z

    .prologue
    .line 357
    if-eqz p1, :cond_8

    .line 358
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;->remoteWidget:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->addContextualWidget(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V

    .line 361
    :goto_7
    return-void

    .line 360
    :cond_8
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;->remoteWidget:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->removeContextualWidget(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V

    goto :goto_7
.end method

.method private handleSecMusicWidgetUpdate(Z)V
    .registers 3
    .param p1, "isPlaying"    # Z

    .prologue
    .line 372
    if-eqz p1, :cond_8

    .line 373
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;->secMusicWidget:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->addContextualWidget(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V

    .line 377
    :goto_7
    return-void

    .line 375
    :cond_8
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;->secMusicWidget:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->removeContextualWidget(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V

    goto :goto_7
.end method

.method private isNationalRoamingPlay()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 344
    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, "salesCode":Ljava/lang/String;
    const-string v3, "PRT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    const-string v3, "XEO"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 346
    :cond_17
    const-string v3, "gsm.sim.operator.numeric"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 347
    .local v1, "simNumeric":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_26

    .line 353
    .end local v1    # "simNumeric":Ljava/lang/String;
    :cond_25
    :goto_25
    return v2

    .line 349
    .restart local v1    # "simNumeric":Ljava/lang/String;
    :cond_26
    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 351
    const-string v2, "26006"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_25
.end method

.method private removeContextualWidget(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V
    .registers 4
    .param p1, "type"    # Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;

    .prologue
    .line 449
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$4;->$SwitchMap$com$android$internal$policy$impl$keyguard$sec$ContextualWidgetMonitor$ContextualWidget:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2a

    .line 467
    :goto_b
    return-void

    .line 451
    :pswitch_c
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mDefaultMissedWidget:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->removeWidget(Landroid/content/ComponentName;)V

    goto :goto_b

    .line 454
    :pswitch_12
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mDefaultMusicWidget:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->removeWidget(Landroid/content/ComponentName;)V

    goto :goto_b

    .line 457
    :pswitch_18
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mDefaultRemoteWidget:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->removeWidget(Landroid/content/ComponentName;)V

    goto :goto_b

    .line 460
    :pswitch_1e
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mDefaultSecMusicWidget:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->removeWidget(Landroid/content/ComponentName;)V

    goto :goto_b

    .line 463
    :pswitch_24
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mDefaultFMRadioWidget:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->removeWidget(Landroid/content/ComponentName;)V

    goto :goto_b

    .line 449
    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_c
        :pswitch_12
        :pswitch_18
        :pswitch_1e
        :pswitch_24
    .end packed-switch
.end method

.method private removeWidget(Landroid/content/ComponentName;)V
    .registers 8
    .param p1, "widgetComponentName"    # Landroid/content/ComponentName;

    .prologue
    .line 535
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->getWidgetId(Landroid/content/ComponentName;)I

    move-result v0

    .line 536
    .local v0, "alreadyAddedWidgetId":I
    if-eqz v0, :cond_9

    .line 537
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mAlreadyAddedWidgetId:I

    .line 541
    :cond_9
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->getContextualWidgetId(Landroid/content/ComponentName;)I

    move-result v1

    .line 543
    .local v1, "widgetId":I
    if-eqz v1, :cond_29

    .line 544
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v2, v1}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 545
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->removeContextualWidget(I)Z

    .line 547
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mResetContextualWidgetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 548
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mResetContextualWidgetRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 550
    :cond_29
    return-void
.end method


# virtual methods
.method public getTargetWidgetId()I
    .registers 2

    .prologue
    .line 564
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mAlreadyAddedWidgetId:I

    return v0
.end method

.method public isMissedEvent()Z
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 412
    const/4 v2, 0x0

    .line 413
    .local v2, "mNM":Landroid/app/NotificationManager;
    const/4 v0, 0x0

    .line 414
    .local v0, "CallNotiInfo":Landroid/app/NotificationInfo;
    const/4 v1, 0x0

    .line 416
    .local v1, "MsgNotiInfo":Landroid/app/NotificationInfo;
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_2a

    .line 417
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "mNM":Landroid/app/NotificationManager;
    check-cast v2, Landroid/app/NotificationManager;

    .line 418
    .restart local v2    # "mNM":Landroid/app/NotificationManager;
    const-string v5, "com.android.phone"

    invoke-virtual {v2, v5, v4}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v0

    .line 419
    const-string v5, "com.android.mms"

    const/16 v6, 0x7b

    invoke-virtual {v2, v5, v6}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v1

    .line 423
    if-nez v0, :cond_29

    if-nez v1, :cond_29

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mShowMissedWidgetBecauseOfRoaming:Z

    if-eqz v5, :cond_2a

    :cond_29
    move v3, v4

    :cond_2a
    return v3
.end method

.method public registerCallback(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;

    .prologue
    .line 407
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;

    .line 408
    return-void
.end method

.method public removeCallback()V
    .registers 2

    .prologue
    .line 403
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;

    .line 404
    return-void
.end method
