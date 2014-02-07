.class final enum Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation$PageType;
.super Ljava/lang/Enum;
.source "SViewCoverPagerNavigation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation$PageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation$PageType;

.field public static final enum current_normal:Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation$PageType;

.field public static final enum normal:Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation$PageType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation$PageType;

    const-string v1, "current_normal"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation$PageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation$PageType;->current_normal:Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation$PageType;

    new-instance v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation$PageType;

    const-string v1, "normal"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation$PageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation$PageType;->normal:Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation$PageType;

    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation$PageType;

    sget-object v1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation$PageType;->current_normal:Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation$PageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation$PageType;->normal:Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation$PageType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation$PageType;->$VALUES:[Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation$PageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation$PageType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation$PageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation$PageType;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation$PageType;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation$PageType;->$VALUES:[Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation$PageType;

    invoke-virtual {v0}, [Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation$PageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation$PageType;

    return-object v0
.end method
