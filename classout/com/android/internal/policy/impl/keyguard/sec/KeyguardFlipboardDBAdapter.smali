.class public Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;
.super Ljava/lang/Object;
.source "KeyguardFlipboardDBAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter$DatabaseHelper;
    }
.end annotation


# static fields
.field public static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS flipboardData(data_id INTEGER PRIMARY KEY AUTOINCREMENT,wallpaperPath TEXT,title TEXT,author TEXT,time INTEGER,app_package TEXT,source TEXT,target TEXT,normal_id TEXT,stream_id TEXT,get_more INTEGER);"

.field private static final DATABASE_VERSION:I = 0x3

.field public static final DB_NAME:Ljava/lang/String; = "FliboardData.db"

.field public static final DROP_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS flipboardData"

.field public static final TABLE_NAME:Ljava/lang/String; = "flipboardData"

.field private static final TAG:Ljava/lang/String; = "KeyguardFlipboardDBAdapter"

.field private static mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private static mDbHelper:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter$DatabaseHelper;

.field private static sInstance:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;


# instance fields
.field private final DEBUG:Z

.field private mContext:Landroid/content/Context;

.field private mDbIsOpen:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 44
    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->sInstance:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;

    .line 51
    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mDbHelper:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter$DatabaseHelper;

    .line 52
    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->DEBUG:Z

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mContext:Landroid/content/Context;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mDbIsOpen:Z

    .line 103
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mContext:Landroid/content/Context;

    .line 104
    return-void
.end method

.method private declared-synchronized close()V
    .registers 4

    .prologue
    .line 156
    monitor-enter p0

    :try_start_1
    const-string v1, "KeyguardFlipboardDBAdapter"

    const-string v2, "close"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_28

    .line 159
    :try_start_8
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mDbHelper:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter$DatabaseHelper;

    if-eqz v1, :cond_11

    .line 160
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mDbHelper:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter$DatabaseHelper;->close()V

    .line 162
    :cond_11
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_1a

    .line 163
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1a
    .catch Landroid/database/SQLException; {:try_start_8 .. :try_end_1a} :catch_1f
    .catchall {:try_start_8 .. :try_end_1a} :catchall_28

    .line 169
    :cond_1a
    :goto_1a
    const/4 v1, 0x0

    :try_start_1b
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mDbIsOpen:Z
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_28

    .line 170
    monitor-exit p0

    return-void

    .line 164
    :catch_1f
    move-exception v0

    .line 166
    .local v0, "e":Landroid/database/SQLException;
    :try_start_20
    const-string v1, "KeyguardFlipboardDBAdapter"

    const-string v2, "close database exception"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_28

    goto :goto_1a

    .line 156
    .end local v0    # "e":Landroid/database/SQLException;
    :catchall_28
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    const-class v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->sInstance:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;

    if-nez v0, :cond_e

    .line 113
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->sInstance:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;

    .line 115
    :cond_e
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->sInstance:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 112
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private insertData(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;)J
    .registers 6
    .param p1, "itemData"    # Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;

    .prologue
    .line 173
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_6

    if-nez p1, :cond_9

    .line 174
    :cond_6
    const-wide/16 v1, -0x1

    .line 189
    :goto_8
    return-wide v1

    .line 176
    :cond_9
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 178
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "wallpaperPath"

    iget-object v2, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->wallpaperPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v1, "title"

    iget-object v2, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v1, "author"

    iget-object v2, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->author:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v1, "time"

    iget-wide v2, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->time:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 182
    const-string v1, "app_package"

    iget-object v2, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->appPackage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v1, "source"

    iget-object v2, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->source:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v1, "target"

    iget-object v2, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->target:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v1, "normal_id"

    iget-object v2, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v1, "stream_id"

    iget-object v2, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->streamId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v1, "get_more"

    iget v2, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->getMore:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 189
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "flipboardData"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    goto :goto_8
.end method

.method private declared-synchronized openToRead()Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;
    .registers 4

    .prologue
    .line 138
    monitor-enter p0

    :try_start_1
    const-string v1, "KeyguardFlipboardDBAdapter"

    const-string v2, "open to read"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_2b

    .line 141
    :try_start_8
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter$DatabaseHelper;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter$DatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mDbHelper:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter$DatabaseHelper;

    .line 142
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mDbHelper:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sput-object v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_19
    .catch Landroid/database/SQLException; {:try_start_8 .. :try_end_19} :catch_22
    .catchall {:try_start_8 .. :try_end_19} :catchall_2b

    .line 148
    :goto_19
    :try_start_19
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_20

    .line 149
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mDbIsOpen:Z
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_2b

    .line 151
    :cond_20
    monitor-exit p0

    return-object p0

    .line 143
    :catch_22
    move-exception v0

    .line 145
    .local v0, "e":Landroid/database/SQLException;
    :try_start_23
    const-string v1, "KeyguardFlipboardDBAdapter"

    const-string v2, "open database exception"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_2b

    goto :goto_19

    .line 138
    .end local v0    # "e":Landroid/database/SQLException;
    :catchall_2b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized openToWrite()Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;
    .registers 4

    .prologue
    .line 120
    monitor-enter p0

    :try_start_1
    const-string v1, "KeyguardFlipboardDBAdapter"

    const-string v2, "open to write"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_2b

    .line 123
    :try_start_8
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter$DatabaseHelper;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter$DatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mDbHelper:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter$DatabaseHelper;

    .line 124
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mDbHelper:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sput-object v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_19
    .catch Landroid/database/SQLException; {:try_start_8 .. :try_end_19} :catch_22
    .catchall {:try_start_8 .. :try_end_19} :catchall_2b

    .line 130
    :goto_19
    :try_start_19
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_20

    .line 131
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mDbIsOpen:Z
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_2b

    .line 133
    :cond_20
    monitor-exit p0

    return-object p0

    .line 125
    :catch_22
    move-exception v0

    .line 127
    .local v0, "e":Landroid/database/SQLException;
    :try_start_23
    const-string v1, "KeyguardFlipboardDBAdapter"

    const-string v2, "open database exception"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_2b

    goto :goto_19

    .line 120
    .end local v0    # "e":Landroid/database/SQLException;
    :catchall_2b
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public getDataList()Ljava/util/ArrayList;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 219
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mDbIsOpen:Z

    if-eqz v0, :cond_6

    .line 248
    :cond_5
    :goto_5
    return-object v2

    .line 222
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->openToRead()Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;

    .line 223
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_5

    .line 226
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "flipboardData"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 227
    .local v12, "cursor":Landroid/database/Cursor;
    if-nez v12, :cond_20

    .line 228
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->close()V

    goto :goto_5

    .line 230
    :cond_20
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2d

    .line 231
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 232
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->close()V

    goto :goto_5

    .line 236
    :cond_2d
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v13, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;>;"
    :try_start_32
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 240
    :cond_35
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;

    const/4 v1, 0x1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    const/4 v6, 0x5

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x6

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x7

    invoke-interface {v12, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x8

    invoke-interface {v12, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x9

    invoke-interface {v12, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0xa

    invoke-interface {v12, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_76
    .catchall {:try_start_32 .. :try_end_76} :catchall_81

    move-result v0

    if-nez v0, :cond_35

    .line 244
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 245
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->close()V

    move-object v2, v13

    .line 248
    goto :goto_5

    .line 244
    :catchall_81
    move-exception v0

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 245
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->close()V

    throw v0
.end method

.method public insertDataList(Ljava/util/ArrayList;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "itemDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;>;"
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 193
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_e

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mDbIsOpen:Z

    if-eqz v3, :cond_f

    .line 215
    :cond_e
    :goto_e
    return v2

    .line 196
    :cond_f
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->openToWrite()Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;

    .line 197
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_e

    .line 200
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "flipboardData"

    invoke-virtual {v3, v4, v5, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 202
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 204
    :try_start_22
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;

    .line 205
    .local v1, "itemData":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->insertData(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;)J
    :try_end_35
    .catchall {:try_start_22 .. :try_end_35} :catchall_54

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_26

    .line 211
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 212
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->close()V

    goto :goto_e

    .line 209
    .end local v1    # "itemData":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;
    :cond_45
    :try_start_45
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4a
    .catchall {:try_start_45 .. :try_end_4a} :catchall_54

    .line 211
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 212
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->close()V

    .line 215
    const/4 v2, 0x1

    goto :goto_e

    .line 211
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_54
    move-exception v2

    sget-object v3, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 212
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->close()V

    throw v2
.end method
