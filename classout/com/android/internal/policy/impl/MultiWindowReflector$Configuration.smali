.class public Lcom/android/internal/policy/impl/MultiWindowReflector$Configuration;
.super Ljava/lang/Object;
.source "MultiWindowReflector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MultiWindowReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Configuration"
.end annotation


# static fields
.field public static ARRANGE_SPLITED:I

.field public static ARRANGE_SPLITED3L:I

.field public static ARRANGE_SPLITED3R:I

.field public static ARRANGE_SPLITED4:I

.field public static ARRANGE_TOGGLE_MASK:I

.field public static ARRANGE_UNDEFINED:I

.field static FIELD_NAMES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    .line 165
    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "ARRANGE_UNDEFINED"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "ARRANGE_SPLITED"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "ARRANGE_SPLITED3L"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "ARRANGE_SPLITED3R"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "ARRANGE_SPLITED4"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "ARRANGE_TOGGLE_MASK"

    aput-object v6, v4, v5

    sput-object v4, Lcom/android/internal/policy/impl/MultiWindowReflector$Configuration;->FIELD_NAMES:[Ljava/lang/String;

    .line 175
    sget-object v4, Lcom/android/internal/policy/impl/MultiWindowReflector$Configuration;->FIELD_NAMES:[Ljava/lang/String;

    array-length v0, v4

    .line 176
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_27
    if-ge v2, v0, :cond_47

    .line 178
    :try_start_29
    const-class v4, Landroid/content/res/Configuration;

    sget-object v5, Lcom/android/internal/policy/impl/MultiWindowReflector$Configuration;->FIELD_NAMES:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 179
    .local v3, "src":Ljava/lang/reflect/Field;
    const-class v4, Lcom/android/internal/policy/impl/MultiWindowReflector$Configuration;

    sget-object v5, Lcom/android/internal/policy/impl/MultiWindowReflector$Configuration;->FIELD_NAMES:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 180
    .local v1, "dst":Ljava/lang/reflect/Field;
    invoke-virtual {v3, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v1, v1, v4}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_44
    .catch Ljava/lang/NoSuchFieldException; {:try_start_29 .. :try_end_44} :catch_4c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_29 .. :try_end_44} :catch_4a
    .catch Ljava/lang/IllegalAccessException; {:try_start_29 .. :try_end_44} :catch_48

    .line 176
    .end local v1    # "dst":Ljava/lang/reflect/Field;
    .end local v3    # "src":Ljava/lang/reflect/Field;
    :goto_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 186
    :cond_47
    return-void

    .line 183
    :catch_48
    move-exception v4

    goto :goto_44

    .line 182
    :catch_4a
    move-exception v4

    goto :goto_44

    .line 181
    :catch_4c
    move-exception v4

    goto :goto_44
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 157
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
