.class final enum Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;
.super Ljava/lang/Enum;
.source "KeyguardEffectView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Background"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;

.field public static final enum flipboard:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;

.field public static final enum none:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;

.field public static final enum ripple:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;

.field public static final enum wallpaper:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;

.field public static final enum waterbrush:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;

    const-string v1, "ripple"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;->ripple:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;

    const-string v1, "wallpaper"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;->wallpaper:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;

    const-string v1, "none"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;->none:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;

    const-string v1, "flipboard"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;->flipboard:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;

    const-string v1, "waterbrush"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;->waterbrush:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;

    .line 52
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;->ripple:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;->wallpaper:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;->none:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;->flipboard:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;->waterbrush:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;->$VALUES:[Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;

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
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 52
    const-class v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;
    .registers 1

    .prologue
    .line 52
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;->$VALUES:[Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;

    invoke-virtual {v0}, [Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;

    return-object v0
.end method
