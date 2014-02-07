.class public Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$BackInterpolator;
.super Ljava/lang/Object;
.source "LensFlareView.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BackInterpolator"
.end annotation


# instance fields
.field private overshot:F

.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;

.field private type:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;F)V
    .registers 4
    .param p2, "type"    # Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;
    .param p3, "overshot"    # F

    .prologue
    .line 1123
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$BackInterpolator;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1124
    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$BackInterpolator;->type:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;

    .line 1125
    iput p3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$BackInterpolator;->overshot:F

    .line 1126
    return-void
.end method

.method private in(FF)F
    .registers 5
    .param p1, "t"    # F
    .param p2, "o"    # F

    .prologue
    .line 1142
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_8

    .line 1143
    const p2, 0x3fd9cd60

    .line 1145
    :cond_8
    mul-float v0, p1, p1

    const/high16 v1, 0x3f800000

    add-float/2addr v1, p2

    mul-float/2addr v1, p1

    sub-float/2addr v1, p2

    mul-float/2addr v0, v1

    return v0
.end method

.method private inout(FF)F
    .registers 11
    .param p1, "t"    # F
    .param p2, "o"    # F

    .prologue
    const/high16 v7, 0x3f000000

    const-wide v5, 0x3ff8666666666666L

    const/high16 v4, 0x40000000

    const/high16 v3, 0x3f800000

    .line 1156
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_13

    .line 1157
    const p2, 0x3fd9cd60

    .line 1159
    :cond_13
    mul-float/2addr p1, v4

    .line 1160
    cmpg-float v0, p1, v3

    if-gez v0, :cond_24

    .line 1161
    mul-float v0, p1, p1

    float-to-double v1, p2

    mul-double/2addr v1, v5

    double-to-float p2, v1

    add-float v1, p2, v3

    mul-float/2addr v1, p1

    sub-float/2addr v1, p2

    mul-float/2addr v0, v1

    mul-float/2addr v0, v7

    .line 1163
    :goto_23
    return v0

    :cond_24
    sub-float/2addr p1, v4

    mul-float v0, p1, p1

    float-to-double v1, p2

    mul-double/2addr v1, v5

    double-to-float p2, v1

    add-float v1, p2, v3

    mul-float/2addr v1, p1

    add-float/2addr v1, p2

    mul-float/2addr v0, v1

    add-float/2addr v0, v4

    mul-float/2addr v0, v7

    goto :goto_23
.end method

.method private out(FF)F
    .registers 6
    .param p1, "t"    # F
    .param p2, "o"    # F

    .prologue
    const/high16 v2, 0x3f800000

    .line 1149
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_a

    .line 1150
    const p2, 0x3fd9cd60

    .line 1152
    :cond_a
    sub-float/2addr p1, v2

    mul-float v0, p1, p1

    add-float v1, p2, v2

    mul-float/2addr v1, p1

    add-float/2addr v1, p2

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    return v0
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 4
    .param p1, "t"    # F

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$BackInterpolator;->type:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;->IN:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;

    if-ne v0, v1, :cond_d

    .line 1130
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$BackInterpolator;->overshot:F

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$BackInterpolator;->in(FF)F

    move-result v0

    .line 1138
    :goto_c
    return v0

    .line 1132
    :cond_d
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$BackInterpolator;->type:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;->OUT:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;

    if-ne v0, v1, :cond_1a

    .line 1133
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$BackInterpolator;->overshot:F

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$BackInterpolator;->out(FF)F

    move-result v0

    goto :goto_c

    .line 1135
    :cond_1a
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$BackInterpolator;->type:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;->INOUT:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;

    if-ne v0, v1, :cond_27

    .line 1136
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$BackInterpolator;->overshot:F

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$BackInterpolator;->inout(FF)F

    move-result v0

    goto :goto_c

    .line 1138
    :cond_27
    const/4 v0, 0x0

    goto :goto_c
.end method
