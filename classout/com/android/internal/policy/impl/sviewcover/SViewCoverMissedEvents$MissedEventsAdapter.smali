.class Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;
.super Landroid/widget/BaseAdapter;
.source "SViewCoverMissedEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MissedEventsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;
    }
.end annotation


# instance fields
.field private mCallbacks:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsCallbacks;

.field private mCurrentUserContext:Landroid/content/Context;

.field private mIcons:[I

.field private mIsBootCompleted:Z

.field private mIsPreview:Z

.field private mMissedEventComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mMissedEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 318
    iput-object p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    .line 319
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 294
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_42

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mIcons:[I

    .line 299
    iput-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mCallbacks:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsCallbacks;

    .line 301
    new-instance v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$1;-><init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mMissedEventComparator:Ljava/util/Comparator;

    .line 310
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mMissedEvents:Ljava/util/ArrayList;

    .line 312
    iput-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mCurrentUserContext:Landroid/content/Context;

    .line 314
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mIsBootCompleted:Z

    .line 316
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mIsPreview:Z

    .line 320
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mIntentFilter:Landroid/content/IntentFilter;

    .line 321
    iget-object v0, p1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 322
    iget-object v0, p1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 323
    iget-object v0, p1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 324
    return-void

    .line 294
    :array_42
    .array-data 4
        0x1080275
        0x1080274
    .end array-data
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 271
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mIsPreview:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 271
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mIsBootCompleted:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Landroid/content/Context;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mCurrentUserContext:Landroid/content/Context;

    return-object p1
.end method

.method private findBestMatch(Landroid/database/Cursor;Ljava/lang/String;)Z
    .registers 6
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1071
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1081
    :goto_8
    return v0

    .line 1076
    :cond_9
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    move v0, v1

    .line 1077
    goto :goto_8

    .line 1079
    :cond_15
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_8
.end method

.method private formatDate(J)Ljava/lang/String;
    .registers 8
    .param p1, "milis"    # J

    .prologue
    .line 768
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 769
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 771
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getCurrentUserContext()Landroid/content/Context;

    move-result-object v1

    .line 773
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 776
    .local v2, "time":Ljava/lang/String;
    return-object v2
.end method

.method private getAddressString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "phone_original"    # Ljava/lang/String;

    .prologue
    .line 866
    const-string v0, ""

    .line 867
    .local v0, "recipient":Ljava/lang/String;
    const-string v1, "CBmessages"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 868
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040997

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 885
    :cond_17
    :goto_17
    return-object v0

    .line 869
    :cond_18
    const-string v1, "Pushmessage"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 870
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040998

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 872
    :cond_2e
    const-string v1, "#CMAS#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 873
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getCmasServiceCategoryStringId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 876
    :cond_45
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 877
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getContactInfoForEmailAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 881
    :goto_4f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 882
    move-object v0, p1

    goto :goto_17

    .line 879
    :cond_57
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getContactInfoForPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4f
.end method

.method private getContactInfoForEmailAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1043
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getContactInfoForEmailAddress"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    const/4 v8, 0x0

    .line 1047
    .local v8, "mEmailName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->access$1900(Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->access$2000(Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->EMAIL_WITH_PRESENCE_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->access$2100()Landroid/net/Uri;

    move-result-object v2

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->EMAIL_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->access$2200()[Ljava/lang/String;

    move-result-object v3

    const-string v4, "UPPER(data1)=UPPER(?) AND mimetype=\'vnd.android.cursor.item/email_v2\'"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    aput-object p1, v5, v6

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1052
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_52

    .line 1054
    :cond_31
    :goto_31
    :try_start_31
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 1055
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1056
    .local v9, "name":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 1057
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1059
    :cond_47
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_4a
    .catchall {:try_start_31 .. :try_end_4a} :catchall_53

    move-result v0

    if-nez v0, :cond_31

    .line 1060
    move-object v8, v9

    goto :goto_31

    .line 1064
    .end local v9    # "name":Ljava/lang/String;
    :cond_4f
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1067
    :cond_52
    return-object v8

    .line 1064
    :catchall_53
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getContactInfoForPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/16 v13, 0x3b

    const/4 v5, 0x3

    const/4 v2, 0x0

    .line 985
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 987
    const/4 v8, 0x0

    .line 990
    .local v8, "mName":Ljava/lang/String;
    invoke-virtual {p1, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_17

    .line 991
    invoke-virtual {p1, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 996
    :cond_17
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 997
    .local v11, "normalizedNumber":Ljava/lang/String;
    invoke-static {v11}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 999
    .local v10, "minMatch":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_bd

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_bd

    .line 1000
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 1005
    .local v12, "numberLen":Ljava/lang/String;
    const-string v3, " Data._ID IN  (SELECT DISTINCT lookup.data_id  FROM      (SELECT data_id, normalized_number, length(normalized_number) as len      FROM phone_lookup      WHERE min_match = ?) AS lookup  WHERE  (lookup.len <= ? AND substr(?, ? - lookup.len + 1) = lookup.normalized_number) OR (PHONE_NUMBERS_EQUAL(lookup.normalized_number, ?) ) )"

    .line 1006
    .local v3, "selection":Ljava/lang/String;
    const/4 v1, 0x5

    new-array v4, v1, [Ljava/lang/String;

    aput-object v10, v4, v2

    const/4 v1, 0x1

    aput-object v12, v4, v1

    const/4 v1, 0x2

    aput-object v11, v4, v1

    aput-object v12, v4, v5

    const/4 v1, 0x4

    aput-object v11, v4, v1

    .line 1008
    .local v4, "args":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 1009
    .local v6, "cursor":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->access$1700(Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->access$1600()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 1012
    .local v0, "resolver":Landroid/content/ContentProviderClient;
    if-eqz v0, :cond_68

    .line 1013
    :try_start_5a
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->access$1600()Landroid/net/Uri;

    move-result-object v1

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->CALLER_ID_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->access$1800()[Ljava/lang/String;

    move-result-object v2

    const-string v5, "is_sim"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_67} :catch_9f

    move-result-object v6

    .line 1019
    :cond_68
    :goto_68
    if-nez v6, :cond_a4

    .line 1020
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryContactInfoByNumber("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ") returned NULL cursor!"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " contact uri used "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->access$1600()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    if-eqz v0, :cond_9d

    .line 1023
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_9d
    move-object v9, v8

    .line 1039
    .end local v0    # "resolver":Landroid/content/ContentProviderClient;
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "args":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "mName":Ljava/lang/String;
    .end local v12    # "numberLen":Ljava/lang/String;
    .local v9, "mName":Ljava/lang/String;
    :goto_9e
    return-object v9

    .line 1015
    .end local v9    # "mName":Ljava/lang/String;
    .restart local v0    # "resolver":Landroid/content/ContentProviderClient;
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v4    # "args":[Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "mName":Ljava/lang/String;
    .restart local v12    # "numberLen":Ljava/lang/String;
    :catch_9f
    move-exception v7

    .line 1016
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_68

    .line 1028
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_a4
    :try_start_a4
    invoke-direct {p0, v6, p1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->findBestMatch(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b3

    .line 1029
    const/4 v1, 0x3

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getEmptyIfNull(Ljava/lang/String;)Ljava/lang/String;
    :try_end_b2
    .catchall {:try_start_a4 .. :try_end_b2} :catchall_bf

    move-result-object v8

    .line 1032
    :cond_b3
    if-eqz v6, :cond_b8

    .line 1033
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1035
    :cond_b8
    if-eqz v0, :cond_bd

    .line 1036
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .end local v0    # "resolver":Landroid/content/ContentProviderClient;
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "args":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v12    # "numberLen":Ljava/lang/String;
    :cond_bd
    move-object v9, v8

    .line 1039
    .end local v8    # "mName":Ljava/lang/String;
    .restart local v9    # "mName":Ljava/lang/String;
    goto :goto_9e

    .line 1032
    .end local v9    # "mName":Ljava/lang/String;
    .restart local v0    # "resolver":Landroid/content/ContentProviderClient;
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v4    # "args":[Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "mName":Ljava/lang/String;
    .restart local v12    # "numberLen":Ljava/lang/String;
    :catchall_bf
    move-exception v1

    if-eqz v6, :cond_c5

    .line 1033
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1035
    :cond_c5
    if-eqz v0, :cond_ca

    .line 1036
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_ca
    throw v1
.end method

.method private getContactNameById(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 383
    const/4 v7, 0x0

    .line 384
    .local v7, "name":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 385
    .local v3, "where":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "address"

    aput-object v1, v2, v0

    .line 388
    .local v2, "proj":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://mms-sms/canonical-addresses"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 391
    .local v6, "c":Landroid/database/Cursor;
    if-nez v6, :cond_2f

    .line 409
    :cond_2e
    :goto_2e
    return-object v4

    .line 394
    :cond_2f
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_39

    .line 395
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2e

    .line 399
    :cond_39
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 400
    const-string v0, "address"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 401
    .local v8, "phone_original":Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 403
    if-eqz v8, :cond_2e

    .line 407
    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getAddressString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 409
    goto :goto_2e
.end method

.method private getContactNameByIds(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ids"    # Ljava/lang/String;

    .prologue
    .line 374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 375
    .local v1, "b":Ljava/lang/StringBuilder;
    const-string v5, " "

    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_d
    if-ge v2, v3, :cond_20

    aget-object v4, v0, v2

    .line 376
    .local v4, "s":Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    invoke-direct {p0, p1, v4}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getContactNameById(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 379
    .end local v4    # "s":Ljava/lang/String;
    :cond_20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private getCurrentUserContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 780
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mCurrentUserContext:Landroid/content/Context;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mCurrentUserContext:Landroid/content/Context;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->access$1500(Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;

    move-result-object v0

    goto :goto_6
.end method

.method private getLastNewMessageDate(Landroid/content/Context;)J
    .registers 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 842
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "transport_type"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "normalized_date"

    aput-object v3, v2, v0

    .line 846
    .local v2, "projection":[Ljava/lang/String;
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "complete-conversations"

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 847
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "read=0"

    const/4 v4, 0x0

    const-string v5, "normalized_date DESC LIMIT 1"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 850
    .local v6, "c":Landroid/database/Cursor;
    const-wide/16 v7, 0x0

    .line 851
    .local v7, "date":J
    if-eqz v6, :cond_40

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 852
    const-string v0, "transport_type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 854
    .local v9, "transportType":Ljava/lang/String;
    const-string v0, "normalized_date"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 857
    .end local v9    # "transportType":Ljava/lang/String;
    :cond_40
    if-eqz v6, :cond_46

    .line 858
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 859
    const/4 v6, 0x0

    .line 862
    :cond_46
    return-wide v7
.end method

.method private getLastestMessageInfo(Landroid/content/Context;JLcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;)Z
    .registers 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "threadId"    # J
    .param p4, "e"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;

    .prologue
    .line 790
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLastestMessageInfo threadId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    const/4 v2, 0x7

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "transport_type"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "body"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string v5, "date"

    aput-object v5, v4, v2

    const/4 v2, 0x3

    const-string v5, "sub"

    aput-object v5, v4, v2

    const/4 v2, 0x4

    const-string v5, "sub_cs"

    aput-object v5, v4, v2

    const/4 v2, 0x5

    const-string v5, "date"

    aput-object v5, v4, v2

    const/4 v2, 0x6

    const-string v5, "text"

    aput-object v5, v4, v2

    .line 797
    .local v4, "projection":[Ljava/lang/String;
    const-string v2, "content://mms-sms/unread-messages/first-text"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 798
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "thread_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND read=0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "normalized_date DESC LIMIT 1"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 802
    .local v9, "c":Landroid/database/Cursor;
    if-nez v9, :cond_7b

    .line 803
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v5, "cursor is null"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    const/4 v2, 0x0

    .line 838
    :goto_7a
    return v2

    .line 807
    :cond_7b
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_90

    .line 808
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v5, "cursor count is 0. return false"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 810
    const/4 v9, 0x0

    .line 811
    const/4 v2, 0x0

    goto :goto_7a

    .line 814
    :cond_90
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 815
    const-string v2, "transport_type"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 817
    .local v11, "transportType":Ljava/lang/String;
    const-string v2, "mms"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11b

    .line 818
    const-string v2, "sub"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 819
    .local v10, "subject":Ljava/lang/String;
    const-string v2, "text"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 821
    .local v8, "body":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_116

    .line 822
    if-nez v8, :cond_f4

    .line 823
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "> "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    iput-object v2, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->content:Ljava/lang/String;

    .line 831
    :goto_de
    const-string v2, "date"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const-wide/16 v12, 0x3e8

    mul-long/2addr v5, v12

    move-object/from16 v0, p4

    iput-wide v5, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->time:J

    .line 837
    .end local v8    # "body":Ljava/lang/String;
    .end local v10    # "subject":Ljava/lang/String;
    :goto_ef
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 838
    const/4 v2, 0x1

    goto :goto_7a

    .line 825
    .restart local v8    # "body":Ljava/lang/String;
    .restart local v10    # "subject":Ljava/lang/String;
    :cond_f4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "> "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    iput-object v2, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->content:Ljava/lang/String;

    goto :goto_de

    .line 828
    :cond_116
    move-object/from16 v0, p4

    iput-object v8, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->content:Ljava/lang/String;

    goto :goto_de

    .line 833
    .end local v8    # "body":Ljava/lang/String;
    .end local v10    # "subject":Ljava/lang/String;
    :cond_11b
    const-string v2, "body"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    iput-object v2, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->content:Ljava/lang/String;

    .line 834
    const-string v2, "date"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    move-object/from16 v0, p4

    iput-wide v5, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->time:J

    goto :goto_ef
.end method


# virtual methods
.method public buildObserver()V
    .registers 5

    .prologue
    .line 327
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "buildObserver()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    new-instance v1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$2;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$2;-><init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Landroid/os/Handler;)V

    iput-object v1, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mMissedEventObserver:Landroid/database/ContentObserver;

    .line 340
    return-void
.end method

.method public buildReceiver()V
    .registers 3

    .prologue
    .line 343
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "buildReceiver()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    new-instance v1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$3;-><init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;)V

    iput-object v1, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 371
    return-void
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "numberOrEmail"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 1085
    invoke-static {p1, p2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1086
    const/4 v0, 0x1

    .line 1088
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getCMASProvider()I
    .registers 5

    .prologue
    const/4 v3, 0x2

    .line 931
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    .line 932
    .local v1, "cscFeature":Lcom/sec/android/app/CscFeature;
    const-string v2, "CscFeature_Message_CMASOperator"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 934
    .local v0, "CMASprovider":Ljava/lang/String;
    const-string v2, "us-vzw"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 935
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    const/4 v3, 0x3

    iput v3, v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mCmasProvider:I

    .line 963
    :goto_18
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    iget v2, v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mCmasProvider:I

    return v2

    .line 936
    :cond_1d
    const-string v2, "us-usc"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 937
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    const/4 v3, 0x5

    iput v3, v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mCmasProvider:I

    goto :goto_18

    .line 938
    :cond_2b
    const-string v2, "us-spr"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 939
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    const/4 v3, 0x4

    iput v3, v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mCmasProvider:I

    goto :goto_18

    .line 940
    :cond_39
    const-string v2, "us-att-lte"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 941
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    iput v3, v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mCmasProvider:I

    goto :goto_18

    .line 942
    :cond_46
    const-string v2, "us-att-3g"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 943
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    iput v3, v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mCmasProvider:I

    goto :goto_18

    .line 944
    :cond_53
    const-string v2, "us-att"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 945
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    iput v3, v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mCmasProvider:I

    goto :goto_18

    .line 946
    :cond_60
    const-string v2, "us-tmo"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 947
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    const/4 v3, 0x1

    iput v3, v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mCmasProvider:I

    goto :goto_18

    .line 948
    :cond_6e
    const-string v2, "la-cho"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 949
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    const/4 v3, 0x6

    iput v3, v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mCmasProvider:I

    goto :goto_18

    .line 950
    :cond_7c
    const-string v2, "la-tfg"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 951
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    const/4 v3, 0x7

    iput v3, v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mCmasProvider:I

    goto :goto_18

    .line 952
    :cond_8a
    const-string v2, "skt"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_99

    .line 953
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    const/16 v3, 0x8

    iput v3, v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mCmasProvider:I

    goto :goto_18

    .line 954
    :cond_99
    const-string v2, "kt"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a9

    .line 955
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    const/16 v3, 0x9

    iput v3, v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mCmasProvider:I

    goto/16 :goto_18

    .line 956
    :cond_a9
    const-string v2, "lgu"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b9

    .line 957
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    const/16 v3, 0xa

    iput v3, v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mCmasProvider:I

    goto/16 :goto_18

    .line 958
    :cond_b9
    const-string v2, "kor_open"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c9

    .line 959
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    const/16 v3, 0xb

    iput v3, v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mCmasProvider:I

    goto/16 :goto_18

    .line 961
    :cond_c9
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mCmasProvider:I

    goto/16 :goto_18
.end method

.method public getCmasServiceCategoryStringId(Ljava/lang/String;)I
    .registers 8
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x7

    const/4 v4, 0x6

    .line 889
    const-string v1, "Debug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCmasServiceCategory() address is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    const/4 v0, 0x0

    .line 892
    .local v0, "type":I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getCMASProvider()I

    move-result v1

    if-eq v1, v4, :cond_27

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getCMASProvider()I

    move-result v1

    if-ne v1, v5, :cond_2a

    .line 894
    :cond_27
    const v0, 0x1040993

    .line 896
    :cond_2a
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getCMASProvider()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_87

    .line 897
    const-string v1, "Presidential"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 898
    const v0, 0x104098a

    .line 925
    :cond_3c
    :goto_3c
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCmasServiceCategory() type is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    return v0

    .line 899
    :cond_57
    const-string v1, "Extreme"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 900
    const v0, 0x104098b

    goto :goto_3c

    .line 901
    :cond_63
    const-string v1, "Severe"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 902
    const v0, 0x104098c

    goto :goto_3c

    .line 903
    :cond_6f
    const-string v1, "Amber"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 904
    const v0, 0x104098d

    goto :goto_3c

    .line 905
    :cond_7b
    const-string v1, "CMASALL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 906
    const v0, 0x1040992

    goto :goto_3c

    .line 909
    :cond_87
    const-string v1, "Presidential"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 910
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getCMASProvider()I

    move-result v1

    if-eq v1, v4, :cond_9b

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getCMASProvider()I

    move-result v1

    if-ne v1, v5, :cond_9f

    .line 912
    :cond_9b
    const v0, 0x1040993

    goto :goto_3c

    .line 914
    :cond_9f
    const v0, 0x104098e

    goto :goto_3c

    .line 915
    :cond_a3
    const-string v1, "Extreme"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_af

    .line 916
    const v0, 0x104098f

    goto :goto_3c

    .line 917
    :cond_af
    const-string v1, "Severe"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_bb

    .line 918
    const v0, 0x1040990

    goto :goto_3c

    .line 919
    :cond_bb
    const-string v1, "Amber"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c8

    .line 920
    const v0, 0x1040991

    goto/16 :goto_3c

    .line 921
    :cond_c8
    const-string v1, "CMASALL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 922
    const v0, 0x1040992

    goto/16 :goto_3c
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 671
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mMissedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getEmptyIfNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1092
    if-nez p1, :cond_4

    const-string p1, ""

    .end local p1    # "s":Ljava/lang/String;
    :cond_4
    return-object p1
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 676
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mMissedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 681
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPreviewMesagePreference(Landroid/content/Context;)Z
    .registers 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 413
    const/4 v6, 0x0

    .line 415
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->MSG_PREFERENCE:Landroid/net/Uri;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->access$700()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "BOOLEAN"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v11, "pref_key_enable_preview_message"

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 421
    const/4 v8, 0x0

    .line 422
    .local v8, "result":I
    if-eqz v6, :cond_29

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 423
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_28
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_28} :catch_3b
    .catchall {:try_start_3 .. :try_end_28} :catchall_4c

    move-result v8

    .line 426
    :cond_29
    if-ne v8, v9, :cond_33

    .line 432
    if-eqz v6, :cond_31

    .line 433
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 434
    const/4 v6, 0x0

    :cond_31
    move v0, v9

    .line 437
    .end local v8    # "result":I
    :goto_32
    return v0

    .line 432
    .restart local v8    # "result":I
    :cond_33
    if-eqz v6, :cond_39

    .line 433
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 434
    const/4 v6, 0x0

    .end local v8    # "result":I
    :cond_39
    :goto_39
    move v0, v10

    .line 437
    goto :goto_32

    .line 429
    :catch_3b
    move-exception v7

    .line 430
    .local v7, "e":Landroid/database/SQLException;
    :try_start_3c
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SQLException at getPreviewMesagePreference()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catchall {:try_start_3c .. :try_end_45} :catchall_4c

    .line 432
    if-eqz v6, :cond_39

    .line 433
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 434
    const/4 v6, 0x0

    goto :goto_39

    .line 432
    .end local v7    # "e":Landroid/database/SQLException;
    :catchall_4c
    move-exception v0

    if-eqz v6, :cond_53

    .line 433
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 434
    const/4 v6, 0x0

    :cond_53
    throw v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v9, 0x0

    .line 724
    if-nez p2, :cond_18

    .line 725
    iget-object v7, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->access$1400(Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 727
    .local v4, "l":Landroid/view/LayoutInflater;
    const v7, 0x10900dd

    invoke-virtual {v4, v7, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 730
    .end local v4    # "l":Landroid/view/LayoutInflater;
    :cond_18
    const v7, 0x10202ba

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 732
    .local v3, "icon":Landroid/widget/ImageView;
    const v7, 0x10202bb

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 734
    .local v5, "name":Landroid/widget/TextView;
    const v7, 0x10202bc

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 736
    .local v6, "time":Landroid/widget/TextView;
    const v7, 0x10202b6

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 738
    .local v0, "content":Landroid/widget/TextView;
    const v7, 0x10202b7

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 741
    .local v1, "count":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mMissedEvents:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;

    .line 742
    .local v2, "currentEvent":Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;
    iget-object v7, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mIcons:[I

    iget v8, v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->type:I

    aget v7, v7, v8

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 744
    iget-object v7, v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 746
    iget-wide v7, v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->time:J

    invoke-direct {p0, v7, v8}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->formatDate(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 747
    iget v7, v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->unreadCount:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 748
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 749
    iget v7, v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->type:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_cc

    .line 750
    iget-object v7, v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->number:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x104099d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b4

    iget-object v7, v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->number:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x104099e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b4

    iget-object v7, v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->number:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x104099f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c6

    .line 753
    :cond_b4
    const-string v7, "MISSED"

    const-string v8, "content\'s gone"

    invoke-static {v7, v8}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    iget-object v7, v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->number:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 755
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 764
    :goto_c5
    return-object p2

    .line 758
    :cond_c6
    iget-object v7, v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->number:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c5

    .line 762
    :cond_cc
    iget-object v7, v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->content:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c5
.end method

.method public isEmailAddress(Ljava/lang/String;)Z
    .registers 4
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 1096
    if-eqz p1, :cond_d

    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 1097
    const/4 v0, 0x0

    .line 1099
    :goto_c
    return v0

    :cond_d
    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    goto :goto_c
.end method

.method public isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 968
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    .line 970
    .local v0, "enable":I
    const/4 v3, 0x2

    if-eq v3, v0, :cond_f

    const/4 v3, 0x3

    if-ne v3, v0, :cond_2a

    .line 972
    :cond_f
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is diabled"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    .end local v0    # "enable":I
    :goto_29
    return v2

    .line 975
    .restart local v0    # "enable":I
    :cond_2a
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is enabled"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_44} :catch_46

    .line 976
    const/4 v2, 0x1

    goto :goto_29

    .line 978
    .end local v0    # "enable":I
    :catch_46
    move-exception v1

    .line 979
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not installed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29
.end method

.method public onItemClick(I)V
    .registers 9
    .param p1, "position"    # I

    .prologue
    const v6, 0x10008000

    .line 685
    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mMissedEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;

    .line 686
    .local v0, "currentEvent":Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;
    if-eqz v0, :cond_94

    .line 687
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "onClicked"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    iget v3, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5f

    .line 689
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Missed call view was clicked"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    const-string v3, "MISSED"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClicked, missed call id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->callId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.dialertab.calllog.MISSED_CALL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 693
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 694
    const-string v3, "EXTRA_CALL_LOG_IDS"

    iget-object v4, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->callId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 695
    const-string v3, "EXTRA_CALL_LOG_CONTACT"

    iget-object v4, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 697
    :try_start_56
    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->access$1100(Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_5f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_56 .. :try_end_5f} :catch_95

    .line 702
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_5f
    :goto_5f
    iget v3, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->type:I

    if-nez v3, :cond_94

    .line 703
    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->access$1200(Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.android.mms"

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ab

    .line 704
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Missed message view was clicked"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.mms.cover.MissedMsgActivity"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 707
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 708
    const-string v3, "thread_id"

    iget-wide v4, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->id:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 710
    :try_start_8b
    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->access$1300(Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_94
    .catch Landroid/content/ActivityNotFoundException; {:try_start_8b .. :try_end_94} :catch_a0

    .line 719
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_94
    :goto_94
    return-void

    .line 698
    .restart local v2    # "intent":Landroid/content/Intent;
    :catch_95
    move-exception v1

    .line 699
    .local v1, "exception":Landroid/content/ActivityNotFoundException;
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityNotFoundException !!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    .line 711
    .end local v1    # "exception":Landroid/content/ActivityNotFoundException;
    :catch_a0
    move-exception v1

    .line 712
    .restart local v1    # "exception":Landroid/content/ActivityNotFoundException;
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityNotFoundException !!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_94

    .line 715
    .end local v1    # "exception":Landroid/content/ActivityNotFoundException;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_ab
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Message apk does not exist in this target"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_94
.end method

.method public setCallbacks(Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsCallbacks;)V
    .registers 2
    .param p1, "c"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsCallbacks;

    .prologue
    .line 784
    iput-object p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mCallbacks:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsCallbacks;

    .line 785
    return-void
.end method

.method public updateMissedEvents()V
    .registers 44

    .prologue
    .line 441
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v9, "updateMissedEvents()"

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const/16 v23, 0x0

    .line 445
    .local v23, "isCoverOpened":Z
    :try_start_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    iget-object v5, v5, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v5}, Landroid/view/IWindowManager;->isCoverOpen()Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_14} :catch_81

    move-result v23

    .line 450
    :goto_15
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->access$800(Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v9, "device_provisioned"

    const/4 v11, 0x0

    invoke-static {v5, v9, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_86

    const/16 v27, 0x1

    .line 452
    .local v27, "isProvisioned":Z
    :goto_2c
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mIsBootCompleted:Z

    if-nez v5, :cond_40

    .line 453
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    iget-object v5, v5, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v5

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mIsBootCompleted:Z

    .line 456
    :cond_40
    if-nez v23, :cond_4a

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mIsBootCompleted:Z

    if-eqz v5, :cond_4a

    if-nez v27, :cond_89

    .line 457
    :cond_4a
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->access$100()Ljava/lang/String;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isCoverOpened="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " mIsBootCompleted="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mIsBootCompleted:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " isProvisioned="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :goto_80
    return-void

    .line 446
    .end local v27    # "isProvisioned":Z
    :catch_81
    move-exception v21

    .line 447
    .local v21, "e":Ljava/lang/Exception;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15

    .line 450
    .end local v21    # "e":Ljava/lang/Exception;
    :cond_86
    const/16 v27, 0x0

    goto :goto_2c

    .line 461
    .restart local v27    # "isProvisioned":Z
    :cond_89
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    iget-object v5, v5, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mKeyguardViewMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v25

    .line 462
    .local v25, "isCurrentSecurity":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    iget-boolean v5, v5, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mIsPreviousSecurity:Z

    move/from16 v0, v25

    if-eq v5, v0, :cond_ac

    .line 463
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    const/4 v9, 0x0

    iput-boolean v9, v5, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mUpdated:Z

    .line 464
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    move/from16 v0, v25

    iput-boolean v0, v5, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mIsPreviousSecurity:Z

    .line 467
    :cond_ac
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->access$900(Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getPreviewMesagePreference(Landroid/content/Context;)Z

    move-result v24

    .line 468
    .local v24, "isCurrentPreview":Z
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mIsPreview:Z

    move/from16 v0, v24

    if-eq v0, v5, :cond_cf

    .line 469
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    const/4 v9, 0x0

    iput-boolean v9, v5, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mUpdated:Z

    .line 470
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mIsPreview:Z

    .line 473
    :cond_cf
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    iget-boolean v5, v5, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mUpdated:Z

    if-eqz v5, :cond_e1

    .line 474
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v9, "already updated"

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_80

    .line 477
    :cond_e1
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v9, "not yet updated"

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    const/4 v9, 0x1

    iput-boolean v9, v5, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->mUpdated:Z

    .line 480
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mMissedEvents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 482
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getCurrentUserContext()Landroid/content/Context;

    move-result-object v20

    .line 484
    .local v20, "context":Landroid/content/Context;
    const-string v5, "content://logs/call/group"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 485
    .local v6, "URI_LOGS":Landroid/net/Uri;
    const-string v8, "type=3 AND new>0"

    .line 487
    .local v8, "where":Ljava/lang/String;
    const/4 v5, 0x5

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v9, "count"

    aput-object v9, v7, v5

    const/4 v5, 0x1

    const-string v9, "_id"

    aput-object v9, v7, v5

    const/4 v5, 0x2

    const-string v9, "name"

    aput-object v9, v7, v5

    const/4 v5, 0x3

    const-string v9, "number"

    aput-object v9, v7, v5

    const/4 v5, 0x4

    const-string v9, "date"

    aput-object v9, v7, v5

    .line 494
    .local v7, "callProjection":[Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 497
    .local v19, "c":Landroid/database/Cursor;
    if-eqz v19, :cond_2d6

    .line 498
    :goto_12c
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2d3

    .line 499
    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 500
    .local v28, "mCount":I
    const-string v5, "name"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 502
    .local v33, "name":Ljava/lang/String;
    const-string v5, "number"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 504
    .local v34, "number":Ljava/lang/String;
    if-nez v33, :cond_159

    .line 505
    move-object/from16 v33, v34

    .line 508
    :cond_159
    const-wide/16 v39, 0x0

    .line 510
    .local v39, "time":J
    :try_start_15b
    const-string v5, "date"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J
    :try_end_168
    .catch Ljava/lang/Exception; {:try_start_15b .. :try_end_168} :catch_1e9

    move-result-wide v39

    .line 515
    :goto_169
    new-instance v21, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;

    const/4 v5, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;-><init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$1;)V

    .line 517
    .local v21, "e":Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;
    move/from16 v0, v28

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->unreadCount:I

    .line 518
    move-object/from16 v0, v33

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->name:Ljava/lang/String;

    .line 519
    move-wide/from16 v0, v39

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->time:J

    .line 520
    const/4 v5, 0x1

    move-object/from16 v0, v21

    iput v5, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->type:I

    .line 522
    new-instance v22, Ljava/lang/StringBuffer;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    .line 524
    .local v22, "idsStr":Ljava/lang/StringBuffer;
    const/4 v5, 0x1

    move/from16 v0, v28

    if-le v0, v5, :cond_2b7

    .line 525
    const/16 v31, 0x0

    .line 526
    .local v31, "mIndex":I
    const-string v5, "content://logs/call"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 527
    .local v10, "URI_ID_LOGS":Landroid/net/Uri;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "type=3 AND new>0 AND number=\'"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "\'"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 531
    .local v12, "whereForID":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v29

    .line 534
    .local v29, "mCursorForID":Landroid/database/Cursor;
    :goto_1c2
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_217

    .line 535
    const-string v5, "_id"

    move-object/from16 v0, v29

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v29

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 538
    .local v30, "mId":Ljava/lang/String;
    if-nez v31, :cond_208

    .line 539
    const-string v5, "_id="

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 540
    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 547
    :goto_1e6
    add-int/lit8 v31, v31, 0x1

    .line 548
    goto :goto_1c2

    .line 511
    .end local v10    # "URI_ID_LOGS":Landroid/net/Uri;
    .end local v12    # "whereForID":Ljava/lang/String;
    .end local v21    # "e":Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;
    .end local v22    # "idsStr":Ljava/lang/StringBuffer;
    .end local v29    # "mCursorForID":Landroid/database/Cursor;
    .end local v30    # "mId":Ljava/lang/String;
    .end local v31    # "mIndex":I
    :catch_1e9
    move-exception v21

    .line 512
    .local v21, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->access$100()Ljava/lang/String;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "missed call\'s time or id is null. name : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v33

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_169

    .line 543
    .restart local v10    # "URI_ID_LOGS":Landroid/net/Uri;
    .restart local v12    # "whereForID":Ljava/lang/String;
    .local v21, "e":Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;
    .restart local v22    # "idsStr":Ljava/lang/StringBuffer;
    .restart local v29    # "mCursorForID":Landroid/database/Cursor;
    .restart local v30    # "mId":Ljava/lang/String;
    .restart local v31    # "mIndex":I
    :cond_208
    const-string v5, " OR _id= "

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 544
    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1e6

    .line 550
    .end local v30    # "mId":Ljava/lang/String;
    :cond_217
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->close()V

    .line 557
    .end local v10    # "URI_ID_LOGS":Landroid/net/Uri;
    .end local v12    # "whereForID":Ljava/lang/String;
    .end local v29    # "mCursorForID":Landroid/database/Cursor;
    .end local v31    # "mIndex":I
    :goto_21a
    const-string v5, "-1"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23a

    .line 558
    const-string v5, "MISSED"

    const-string v9, "unknown"

    invoke-static {v5, v9}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v9, 0x104099d

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 562
    :cond_23a
    const-string v5, "-2"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25a

    .line 563
    const-string v5, "MISSED"

    const-string v9, "private_num"

    invoke-static {v5, v9}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v9, 0x104099e

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 567
    :cond_25a
    const-string v5, "-3"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27a

    .line 568
    const-string v5, "MISSED"

    const-string v9, "payphone"

    invoke-static {v5, v9}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v9, 0x104099f

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 572
    :cond_27a
    move-object/from16 v0, v34

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->number:Ljava/lang/String;

    .line 573
    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    iput-object v5, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->content:Ljava/lang/String;

    .line 574
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    iput-object v5, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->callId:Ljava/lang/String;

    .line 575
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mMissedEvents:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    const-string v5, "MISSED"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ID="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12c

    .line 553
    :cond_2b7
    const-string v5, "_id="

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 554
    const-string v5, "_id"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_21a

    .line 578
    .end local v21    # "e":Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;
    .end local v22    # "idsStr":Ljava/lang/StringBuffer;
    .end local v28    # "mCount":I
    .end local v33    # "name":Ljava/lang/String;
    .end local v34    # "number":Ljava/lang/String;
    .end local v39    # "time":J
    :cond_2d3
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 581
    :cond_2d6
    const-string v5, "com.android.mms"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3e5

    .line 582
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getPreviewMesagePreference(Landroid/content/Context;)Z

    move-result v26

    .line 583
    .local v26, "isPreview":Z
    const/16 v41, 0x0

    .line 585
    .local v41, "total_unreadCount":I
    const-string v8, "unread_count>0"

    .line 587
    const/4 v5, 0x5

    new-array v15, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v9, "_id"

    aput-object v9, v15, v5

    const/4 v5, 0x1

    const-string v9, "recipient_ids"

    aput-object v9, v15, v5

    const/4 v5, 0x2

    const-string v9, "unread_count"

    aput-object v9, v15, v5

    const/4 v5, 0x3

    const-string v9, "snippet"

    aput-object v9, v15, v5

    const/4 v5, 0x4

    const-string v9, "date"

    aput-object v9, v15, v5

    .line 591
    .local v15, "projection":[Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    sget-object v5, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v9, "simple"

    const-string v11, "true"

    invoke-virtual {v5, v9, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v14

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v8

    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 596
    if-eqz v26, :cond_40d

    .line 597
    if-eqz v19, :cond_3e5

    .line 598
    :goto_32e
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3e2

    .line 599
    const-string v5, "_id"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v37

    .line 601
    .local v37, "threadId":J
    const-string v5, "recipient_ids"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 603
    .local v35, "recipient_ids":Ljava/lang/String;
    const-string v5, "unread_count"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v42

    .line 605
    .local v42, "unreadCount":I
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getContactNameByIds(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 608
    .restart local v33    # "name":Ljava/lang/String;
    new-instance v21, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;

    const/4 v5, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;-><init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$1;)V

    .line 610
    .restart local v21    # "e":Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-wide/from16 v2, v37

    move-object/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getLastestMessageInfo(Landroid/content/Context;JLcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;)Z

    move-result v5

    if-nez v5, :cond_3a4

    .line 611
    const-string v5, "date"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    move-object/from16 v0, v21

    iput-wide v13, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->time:J

    .line 612
    const-string v5, "snippet"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    iput-object v5, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->content:Ljava/lang/String;

    .line 615
    :cond_3a4
    move-object/from16 v0, v33

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->name:Ljava/lang/String;

    .line 616
    move/from16 v0, v42

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->unreadCount:I

    .line 617
    const/4 v5, 0x0

    move-object/from16 v0, v21

    iput v5, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->type:I

    .line 618
    move-wide/from16 v0, v37

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->id:J

    .line 619
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mMissedEvents:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 620
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->access$100()Ljava/lang/String;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "threadID="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, v37

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_32e

    .line 622
    .end local v21    # "e":Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;
    .end local v33    # "name":Ljava/lang/String;
    .end local v35    # "recipient_ids":Ljava/lang/String;
    .end local v37    # "threadId":J
    .end local v42    # "unreadCount":I
    :cond_3e2
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 656
    .end local v15    # "projection":[Ljava/lang/String;
    .end local v26    # "isPreview":Z
    .end local v41    # "total_unreadCount":I
    :cond_3e5
    :goto_3e5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mMissedEvents:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mMissedEventComparator:Ljava/util/Comparator;

    invoke-static {v5, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 658
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mMissedEvents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v32

    .line 659
    .local v32, "missedEventCount":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mCallbacks:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsCallbacks;

    if-eqz v5, :cond_408

    .line 660
    if-lez v32, :cond_4b6

    .line 661
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mCallbacks:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsCallbacks;

    const/4 v9, 0x1

    invoke-interface {v5, v9}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsCallbacks;->onMissedEventsExists(Z)V

    .line 666
    :cond_408
    :goto_408
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->notifyDataSetChanged()V

    goto/16 :goto_80

    .line 625
    .end local v32    # "missedEventCount":I
    .restart local v15    # "projection":[Ljava/lang/String;
    .restart local v26    # "isPreview":Z
    .restart local v41    # "total_unreadCount":I
    :cond_40d
    const-wide/16 v37, 0x0

    .line 626
    .restart local v37    # "threadId":J
    if-eqz v19, :cond_3e5

    .line 627
    :goto_411
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_436

    .line 628
    const-string v5, "unread_count"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v42

    .line 629
    .restart local v42    # "unreadCount":I
    add-int v41, v41, v42

    .line 630
    const-string v5, "_id"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v37

    .line 631
    goto :goto_411

    .line 632
    .end local v42    # "unreadCount":I
    :cond_436
    if-lez v41, :cond_497

    .line 633
    new-instance v21, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;

    const/4 v5, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;-><init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$1;)V

    .line 634
    .restart local v21    # "e":Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v9, 0x1040994

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    iput-object v5, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->name:Ljava/lang/String;

    .line 636
    move/from16 v0, v41

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->unreadCount:I

    .line 637
    const/16 v36, 0x0

    .line 638
    .local v36, "str":Ljava/lang/String;
    const/4 v5, 0x1

    move/from16 v0, v41

    if-ne v0, v5, :cond_49c

    .line 639
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v9, 0x1040996

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 645
    :goto_471
    move-object/from16 v0, v36

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->content:Ljava/lang/String;

    .line 646
    const/4 v5, 0x0

    move-object/from16 v0, v21

    iput v5, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->type:I

    .line 647
    move-wide/from16 v0, v37

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->id:J

    .line 648
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getLastNewMessageDate(Landroid/content/Context;)J

    move-result-wide v13

    move-object/from16 v0, v21

    iput-wide v13, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->time:J

    .line 649
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mMissedEvents:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    .end local v21    # "e":Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;
    .end local v36    # "str":Ljava/lang/String;
    :cond_497
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3e5

    .line 642
    .restart local v21    # "e":Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;
    .restart local v36    # "str":Ljava/lang/String;
    :cond_49c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v9, 0x1040995

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v11, v13

    invoke-virtual {v5, v9, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    goto :goto_471

    .line 662
    .end local v15    # "projection":[Ljava/lang/String;
    .end local v21    # "e":Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;
    .end local v26    # "isPreview":Z
    .end local v36    # "str":Ljava/lang/String;
    .end local v37    # "threadId":J
    .end local v41    # "total_unreadCount":I
    .restart local v32    # "missedEventCount":I
    :cond_4b6
    if-nez v32, :cond_408

    .line 663
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mCallbacks:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsCallbacks;

    const/4 v9, 0x0

    invoke-interface {v5, v9}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsCallbacks;->onMissedEventsExists(Z)V

    goto/16 :goto_408
.end method
