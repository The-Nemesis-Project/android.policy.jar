.class final enum Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;
.super Ljava/lang/Enum;
.source "KeyguardPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "OneHandMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;

.field public static final enum Left:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;

.field public static final enum Right:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 204
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;

    const-string v1, "Left"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;->Left:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;

    .line 205
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;

    const-string v1, "Right"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;->Right:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;

    .line 203
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;->Left:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;->Right:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;->$VALUES:[Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;

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
    .line 203
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 203
    const-class v0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;
    .registers 1

    .prologue
    .line 203
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;->$VALUES:[Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;

    invoke-virtual {v0}, [Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;

    return-object v0
.end method