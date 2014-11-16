.class final Lcom/android/internal/policy/impl/GlobalKeyManager;
.super Ljava/lang/Object;
.source "GlobalKeyManager.java"


# static fields
.field private static final ATTR_COMPONENT:Ljava/lang/String; = "component"

.field private static final ATTR_KEY_CODE:Ljava/lang/String; = "keyCode"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final GLOBAL_KEY_FILE_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GlobalKeyManager"

.field private static final TAG_GLOBAL_KEYS:Ljava/lang/String; = "global_keys"

.field private static final TAG_KEY:Ljava/lang/String; = "key"


# instance fields
.field private mKeyMapping:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    .line 58
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/GlobalKeyManager;->loadGlobalKeys(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method private loadGlobalKeys(Landroid/content/Context;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    const/4 v5, 0x0

    .line 93
    .local v5, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10f0009

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    .line 94
    const-string v7, "global_keys"

    invoke-static {v5, v7}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 95
    const/4 v7, 0x0

    const-string v8, "version"

    const/4 v9, 0x0

    invoke-interface {v5, v7, v8, v9}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    .line 96
    .local v6, "version":I
    const/4 v7, 0x1

    if-ne v7, v6, :cond_25

    .line 98
    :cond_1c
    :goto_1c
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 99
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_22
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_22} :catch_51
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_22} :catch_5f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_22} :catch_6d
    .catchall {:try_start_1 .. :try_end_22} :catchall_7b

    move-result-object v2

    .line 100
    .local v2, "element":Ljava/lang/String;
    if-nez v2, :cond_2b

    .line 121
    .end local v2    # "element":Ljava/lang/String;
    :cond_25
    if-eqz v5, :cond_2a

    .line 122
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    .line 125
    .end local v6    # "version":I
    :cond_2a
    :goto_2a
    return-void

    .line 103
    .restart local v2    # "element":Ljava/lang/String;
    .restart local v6    # "version":I
    :cond_2b
    :try_start_2b
    const-string v7, "key"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 104
    const/4 v7, 0x0

    const-string v8, "keyCode"

    invoke-interface {v5, v7, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 105
    .local v4, "keyCodeName":Ljava/lang/String;
    const/4 v7, 0x0

    const-string v8, "component"

    invoke-interface {v5, v7, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "componentName":Ljava/lang/String;
    invoke-static {v4}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v3

    .line 107
    .local v3, "keyCode":I
    if-eqz v3, :cond_1c

    .line 108
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v3, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_50
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2b .. :try_end_50} :catch_51
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2b .. :try_end_50} :catch_5f
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_50} :catch_6d
    .catchall {:try_start_2b .. :try_end_50} :catchall_7b

    goto :goto_1c

    .line 114
    .end local v0    # "componentName":Ljava/lang/String;
    .end local v2    # "element":Ljava/lang/String;
    .end local v3    # "keyCode":I
    .end local v4    # "keyCodeName":Ljava/lang/String;
    .end local v6    # "version":I
    :catch_51
    move-exception v1

    .line 115
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    :try_start_52
    const-string v7, "GlobalKeyManager"

    const-string v8, "global keys file not found"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_59
    .catchall {:try_start_52 .. :try_end_59} :catchall_7b

    .line 121
    if-eqz v5, :cond_2a

    .line 122
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_2a

    .line 116
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_5f
    move-exception v1

    .line 117
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_60
    const-string v7, "GlobalKeyManager"

    const-string v8, "XML parser exception reading global keys file"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_67
    .catchall {:try_start_60 .. :try_end_67} :catchall_7b

    .line 121
    if-eqz v5, :cond_2a

    .line 122
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_2a

    .line 118
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_6d
    move-exception v1

    .line 119
    .local v1, "e":Ljava/io/IOException;
    :try_start_6e
    const-string v7, "GlobalKeyManager"

    const-string v8, "I/O exception reading global keys file"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_75
    .catchall {:try_start_6e .. :try_end_75} :catchall_7b

    .line 121
    if-eqz v5, :cond_2a

    .line 122
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_2a

    .line 121
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_7b
    move-exception v7

    if-eqz v5, :cond_81

    .line 122
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_81
    throw v7
.end method


# virtual methods
.method handleGlobalKey(Landroid/content/Context;ILandroid/view/KeyEvent;)Z
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 70
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_2b

    .line 71
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 72
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_2b

    .line 73
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.GLOBAL_BUTTON"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    .line 76
    .local v1, "intent":Landroid/content/Intent;
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 77
    const/4 v2, 0x1

    .line 80
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_2a
    return v2

    :cond_2b
    const/4 v2, 0x0

    goto :goto_2a
.end method

.method shouldHandleGlobalKey(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
