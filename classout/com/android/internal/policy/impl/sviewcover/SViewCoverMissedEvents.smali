.class public Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;
.super Landroid/widget/ListView;
.source "SViewCoverMissedEvents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;,
        Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsCallbacks;
    }
.end annotation


# static fields
.field private static final CALLER_ID_PROJECTION:[Ljava/lang/String;

.field private static final CALLER_ID_SELECTION_WITHOUT_E164_PHONEEQUALS:Ljava/lang/String; = " Data._ID IN  (SELECT DISTINCT lookup.data_id  FROM      (SELECT data_id, normalized_number, length(normalized_number) as len      FROM phone_lookup      WHERE min_match = ?) AS lookup  WHERE  (lookup.len <= ? AND substr(?, ? - lookup.len + 1) = lookup.normalized_number) OR (PHONE_NUMBERS_EQUAL(lookup.normalized_number, ?) ) )"

.field public static final CB_MESSAGE_SENDER:Ljava/lang/String; = "CBmessages"

.field public static final CMAS_MESSAGE_SENDER:Ljava/lang/String; = "#CMAS#CMASALL"

.field public static final CMAS_MESSAGE_SENDER_PREFIX:Ljava/lang/String; = "#CMAS#"

.field public static final CMAS_MESSAGE_SENDER_PRESIDENTIAL:Ljava/lang/String; = "#CMAS#Presidential"

.field public static final CMAS_PROVIDER_ATT:I = 0x2

.field public static final CMAS_PROVIDER_CHO:I = 0x6

.field public static final CMAS_PROVIDER_GENERAL:I = 0x0

.field public static final CMAS_PROVIDER_KOR:I = 0xb

.field public static final CMAS_PROVIDER_KT:I = 0x9

.field public static final CMAS_PROVIDER_LGU:I = 0xa

.field public static final CMAS_PROVIDER_SKT:I = 0x8

.field public static final CMAS_PROVIDER_SPR:I = 0x4

.field public static final CMAS_PROVIDER_TFG:I = 0x7

.field public static final CMAS_PROVIDER_TMO:I = 0x1

.field public static final CMAS_PROVIDER_USC:I = 0x5

.field public static final CMAS_PROVIDER_VZW:I = 0x3

.field private static final CONTACT_NAME_COLUMN:I = 0x3

.field private static final CONTACT_SORT_ORDER:Ljava/lang/String; = "is_sim"

.field private static final EMAIL_CONTACT_NAME_COLUMN:I = 0x3

.field private static final EMAIL_NAME_COLUMN:I = 0x0

.field private static final EMAIL_PROJECTION:[Ljava/lang/String;

.field private static final EMAIL_SELECTION:Ljava/lang/String; = "UPPER(data1)=UPPER(?) AND mimetype=\'vnd.android.cursor.item/email_v2\'"

.field private static final EMAIL_WITH_PRESENCE_URI:Landroid/net/Uri;

.field public static final EXTRA_CALL_LOG_CONTACT:Ljava/lang/String; = "EXTRA_CALL_LOG_CONTACT"

.field public static final EXTRA_CALL_LOG_IDS:Ljava/lang/String; = "EXTRA_CALL_LOG_IDS"

.field public static final MESSAGE:Ljava/lang/String; = "com.android.mms"

.field public static final MISSED_CALL_ACTION_NAME:Ljava/lang/String; = "com.sec.android.app.dialertab.calllog.MISSED_CALL"

.field public static final MISSED_MSG_ACTION_NAME:Ljava/lang/String; = "com.android.mms.cover.MissedMsgActivity"

.field private static final MSG_PREFERENCE:Landroid/net/Uri;

.field private static final PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

.field private static final PHONE_NUMBER_COLUMN:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field public static final WAP_PUSH_MESSAGE_SENDER:Ljava/lang/String; = "Pushmessage"


# instance fields
.field private mAdapder:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

.field public mCmasProvider:I

.field public mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

.field public mIntentFilter:Landroid/content/IntentFilter;

.field protected mIsPreviousSecurity:Z

.field protected mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

.field protected mKeyguardViewMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

.field public mMissedEventObserver:Landroid/database/ContentObserver;

.field protected mUpdated:Z

.field protected mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 83
    const-class v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->TAG:Ljava/lang/String;

    .line 86
    const-string v0, "content://com.android.mms.csc.PreferenceProvider/key"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->MSG_PREFERENCE:Landroid/net/Uri;

    .line 156
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    .line 161
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "data1"

    aput-object v1, v0, v4

    const-string v1, "data3"

    aput-object v1, v0, v5

    const-string v1, "display_name"

    aput-object v1, v0, v6

    const-string v1, "contact_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "contact_status"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "send_to_voicemail"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "photo_thumb_uri"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    .line 177
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->EMAIL_WITH_PRESENCE_URI:Landroid/net/Uri;

    .line 182
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "data4"

    aput-object v1, v0, v3

    const-string v1, "contact_presence"

    aput-object v1, v0, v4

    const-string v1, "contact_id"

    aput-object v1, v0, v5

    const-string v1, "display_name"

    aput-object v1, v0, v6

    const-string v1, "send_to_voicemail"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->EMAIL_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 209
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 210
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 213
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 214
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 217
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x1030128

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 110
    iput v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mCmasProvider:I

    .line 136
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mUpdated:Z

    .line 140
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mIsPreviousSecurity:Z

    .line 204
    iput-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 206
    iput-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mMissedEventObserver:Landroid/database/ContentObserver;

    .line 218
    new-instance v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;-><init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mAdapder:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    .line 219
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mAdapder:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 220
    new-instance v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$1;-><init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 226
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    .line 228
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mWindowManager:Landroid/view/IWindowManager;

    .line 229
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;)Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mAdapder:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 81
    sget-object v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600()Landroid/net/Uri;
    .registers 1

    .prologue
    .line 81
    sget-object v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 81
    sget-object v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100()Landroid/net/Uri;
    .registers 1

    .prologue
    .line 81
    sget-object v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->EMAIL_WITH_PRESENCE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2200()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 81
    sget-object v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->EMAIL_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700()Landroid/net/Uri;
    .registers 1

    .prologue
    .line 81
    sget-object v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->MSG_PREFERENCE:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method registerObserverAndReceiver()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 236
    sget-object v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->TAG:Ljava/lang/String;

    const-string v1, "registerObserverAndReceiver()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mMissedEventObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_17

    .line 238
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mMissedEventObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 240
    :cond_17
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mAdapder:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->buildObserver()V

    .line 241
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://logs/allcalls"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mMissedEventObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 243
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mMissedEventObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 245
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "time_12_24"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mMissedEventObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 249
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_57

    .line 250
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 252
    :cond_57
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mAdapder:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->buildReceiver()V

    .line 253
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 254
    return-void
.end method

.method public setCallbacks(Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsCallbacks;)V
    .registers 3
    .param p1, "c"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsCallbacks;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mAdapder:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->setCallbacks(Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsCallbacks;)V

    .line 264
    return-void
.end method

.method public setKeyguardViewMediator(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    .registers 3
    .param p1, "keyguardViewMediator"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mKeyguardViewMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    .line 268
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mKeyguardViewMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mIsPreviousSecurity:Z

    .line 269
    return-void
.end method

.method unregisterObserverAndReceiver()V
    .registers 3

    .prologue
    .line 257
    sget-object v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->TAG:Ljava/lang/String;

    const-string v1, "unregisterObserverAndReceiver()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mMissedEventObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 259
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 260
    return-void
.end method

.method public updateMissedEvents()V
    .registers 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mAdapder:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->updateMissedEvents()V

    .line 233
    return-void
.end method
