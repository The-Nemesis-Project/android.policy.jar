.class Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$ZInterpolator;
.super Ljava/lang/Object;
.source "KeyguardWidgetPager.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ZInterpolator"
.end annotation


# instance fields
.field private focalLength:F


# direct methods
.method public constructor <init>(F)V
    .registers 2
    .param p1, "foc"    # F

    .prologue
    .line 539
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 540
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$ZInterpolator;->focalLength:F

    .line 541
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 6
    .param p1, "input"    # F

    .prologue
    const/high16 v3, 0x3f800000

    .line 544
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$ZInterpolator;->focalLength:F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$ZInterpolator;->focalLength:F

    add-float/2addr v1, p1

    div-float/2addr v0, v1

    sub-float v0, v3, v0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$ZInterpolator;->focalLength:F

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$ZInterpolator;->focalLength:F

    add-float/2addr v2, v3

    div-float/2addr v1, v2

    sub-float v1, v3, v1

    div-float/2addr v0, v1

    return v0
.end method
