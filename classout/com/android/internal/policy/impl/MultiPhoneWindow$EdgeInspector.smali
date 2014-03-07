.class Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;
.super Ljava/lang/Object;
.source "MultiPhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MultiPhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EdgeInspector"
.end annotation


# static fields
.field public static final BOTTOM:I = 0x2

.field public static final LEFT:I = 0x4

.field public static final NONE:I = 0x0

.field public static final RIGHT:I = 0x8

.field public static final TOP:I = 0x1


# instance fields
.field private mBound:Landroid/graphics/Rect;

.field private mDir:I

.field private mIsCandidate:Z

.field private mPadding:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "bound"    # Landroid/graphics/Rect;
    .param p2, "padding"    # Landroid/graphics/Rect;

    .prologue
    const/4 v0, 0x0

    .line 1155
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1150
    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mDir:I

    .line 1153
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mIsCandidate:Z

    .line 1156
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->set(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1157
    return-void
.end method


# virtual methods
.method public check(II)V
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x1

    .line 1183
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    if-le v0, p1, :cond_56

    .line 1184
    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mDir:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mDir:I

    .line 1189
    :cond_12
    :goto_12
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    if-le v0, p2, :cond_68

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-le p2, v0, :cond_68

    .line 1190
    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mDir:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mDir:I

    .line 1195
    :cond_29
    :goto_29
    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mDir:I

    if-nez v0, :cond_55

    .line 1196
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    if-le v0, p1, :cond_7a

    .line 1197
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mIsCandidate:Z

    .line 1202
    :cond_3c
    :goto_3c
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mIsCandidate:Z

    if-nez v0, :cond_55

    .line 1203
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    if-le v0, p2, :cond_8a

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-le p2, v0, :cond_8a

    .line 1204
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mIsCandidate:Z

    .line 1211
    :cond_55
    :goto_55
    return-void

    .line 1185
    :cond_56
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_12

    .line 1186
    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mDir:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mDir:I

    goto :goto_12

    .line 1191
    :cond_68
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    if-ge v0, p2, :cond_29

    .line 1192
    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mDir:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mDir:I

    goto :goto_29

    .line 1198
    :cond_7a
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_3c

    .line 1199
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mIsCandidate:Z

    goto :goto_3c

    .line 1205
    :cond_8a
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    if-ge v0, p2, :cond_55

    .line 1206
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mIsCandidate:Z

    goto :goto_55
.end method

.method public clear()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 1177
    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mDir:I

    .line 1178
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mIsCandidate:Z

    .line 1179
    return-void
.end method

.method public isCandidate()Z
    .registers 2

    .prologue
    .line 1173
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mIsCandidate:Z

    return v0
.end method

.method public isEdge()Z
    .registers 2

    .prologue
    .line 1166
    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mDir:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isEdge(I)Z
    .registers 3
    .param p1, "direction"    # I

    .prologue
    .line 1170
    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mDir:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public set(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "bound"    # Landroid/graphics/Rect;
    .param p2, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 1160
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mBound:Landroid/graphics/Rect;

    .line 1161
    iput-object p2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mPadding:Landroid/graphics/Rect;

    .line 1162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mIsCandidate:Z

    .line 1163
    return-void
.end method
