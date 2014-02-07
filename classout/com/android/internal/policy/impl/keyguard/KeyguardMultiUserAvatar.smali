.class Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;
.super Landroid/widget/FrameLayout;
.source "KeyguardMultiUserAvatar.java"


# static fields
.field private static final ACTIVE_ALPHA:F = 1.0f

.field private static final ACTIVE_SCALE:F = 1.8f

.field private static final ACTIVE_TEXT_ALPHA:F = 1.0f

.field private static final DEBUG:Z

.field private static final INACTIVE_ALPHA:F = 1.0f

.field private static final INACTIVE_TEXT_ALPHA:F = 1.0f

.field private static final SWITCH_ANIMATION_DURATION:I = 0x96

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActive:Z

.field private final mActiveAlpha:F

.field private final mActiveScale:F

.field private final mActiveTextAlpha:F

.field private final mFrameColor:I

.field private final mFrameShadowColor:I

.field private mFramed:Lcom/android/internal/policy/impl/keyguard/KeyguardCircleFramedDrawable;

.field private final mHighlightColor:I

.field private final mIconSize:F

.field private final mInactiveAlpha:F

.field private final mInactiveTextAlpha:F

.field private mInit:Z

.field private mPressLock:Z

.field private final mShadowRadius:F

.field private final mStroke:F

.field private final mTextColor:I

.field private mTouched:Z

.field private mUserImage:Landroid/widget/ImageView;

.field private mUserInfo:Landroid/content/pm/UserInfo;

.field private mUserName:Landroid/widget/TextView;

.field private mUserSelector:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const-class v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->TAG:Ljava/lang/String;

    .line 42
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x1

    const/high16 v2, 0x3f800000

    .line 114
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mInit:Z

    .line 116
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 117
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x106006a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mTextColor:I

    .line 118
    const v1, 0x1050073

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mIconSize:F

    .line 119
    const v1, 0x1050071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mStroke:F

    .line 120
    const v1, 0x1050072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mShadowRadius:F

    .line 121
    const v1, 0x1060068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mFrameColor:I

    .line 122
    const v1, 0x1060069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mFrameShadowColor:I

    .line 123
    const v1, 0x106006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mHighlightColor:I

    .line 124
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mActiveTextAlpha:F

    .line 125
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mInactiveTextAlpha:F

    .line 126
    const v1, 0x3fe66666

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mActiveScale:F

    .line 127
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mActiveAlpha:F

    .line 128
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mInactiveAlpha:F

    .line 130
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mTouched:Z

    .line 132
    const/4 v1, 0x0

    invoke-virtual {p0, v3, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->setLayerType(ILandroid/graphics/Paint;)V

    .line 133
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;)Lcom/android/internal/policy/impl/keyguard/KeyguardCircleFramedDrawable;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/internal/policy/impl/keyguard/KeyguardCircleFramedDrawable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mUserImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mUserName:Landroid/widget/TextView;

    return-object v0
.end method

.method public static fromXml(ILandroid/content/Context;Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;Landroid/content/pm/UserInfo;)Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;
    .registers 7
    .param p0, "resId"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userSelector"    # Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;
    .param p3, "info"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 98
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;

    .line 101
    .local v0, "icon":Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;
    invoke-virtual {v0, p3, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->init(Landroid/content/pm/UserInfo;Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;)V

    .line 102
    return-object v0
.end method


# virtual methods
.method public getUserInfo()Landroid/content/pm/UserInfo;
    .registers 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mUserInfo:Landroid/content/pm/UserInfo;

    return-object v0
.end method

.method public init(Landroid/content/pm/UserInfo;Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;)V
    .registers 12
    .param p1, "user"    # Landroid/content/pm/UserInfo;
    .param p2, "userSelector"    # Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mUserInfo:Landroid/content/pm/UserInfo;

    .line 144
    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mUserSelector:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;

    .line 146
    const v0, 0x10203ae

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mUserImage:Landroid/widget/ImageView;

    .line 147
    const v0, 0x10203af

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mUserName:Landroid/widget/TextView;

    .line 149
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->getAvatarCache()Lcom/android/internal/policy/impl/keyguard/MultiUserAvatarCache;

    move-result-object v0

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/MultiUserAvatarCache;->get(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardCircleFramedDrawable;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/internal/policy/impl/keyguard/KeyguardCircleFramedDrawable;

    .line 153
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/internal/policy/impl/keyguard/KeyguardCircleFramedDrawable;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/internal/policy/impl/keyguard/KeyguardCircleFramedDrawable;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mIconSize:F

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mFrameColor:I

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mStroke:F

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mFrameShadowColor:I

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mShadowRadius:F

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mHighlightColor:I

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardCircleFramedDrawable;->verifyParams(FIFIFI)Z

    move-result v0

    if-nez v0, :cond_79

    .line 156
    :cond_40
    const/4 v1, 0x0

    .line 158
    .local v1, "icon":Landroid/graphics/Bitmap;
    :try_start_41
    iget-object v0, p1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->rewriteIconPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_4a} :catch_97

    move-result-object v1

    .line 163
    :cond_4b
    :goto_4b
    if-nez v1, :cond_5a

    .line 164
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1080397

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 168
    :cond_5a
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardCircleFramedDrawable;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mIconSize:F

    float-to-int v2, v2

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mFrameColor:I

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mStroke:F

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mFrameShadowColor:I

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mShadowRadius:F

    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mHighlightColor:I

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardCircleFramedDrawable;-><init>(Landroid/graphics/Bitmap;IIFIFI)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/internal/policy/impl/keyguard/KeyguardCircleFramedDrawable;

    .line 170
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->getAvatarCache()Lcom/android/internal/policy/impl/keyguard/MultiUserAvatarCache;

    move-result-object v0

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/internal/policy/impl/keyguard/KeyguardCircleFramedDrawable;

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/MultiUserAvatarCache;->put(ILandroid/graphics/drawable/Drawable;)V

    .line 173
    .end local v1    # "icon":Landroid/graphics/Bitmap;
    :cond_79
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/internal/policy/impl/keyguard/KeyguardCircleFramedDrawable;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardCircleFramedDrawable;->reset()V

    .line 175
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mUserImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/internal/policy/impl/keyguard/KeyguardCircleFramedDrawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 176
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mUserName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mUserInfo:Landroid/content/pm/UserInfo;

    iget-object v2, v2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mUserSelector:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mInit:Z

    .line 179
    return-void

    .line 159
    .restart local v1    # "icon":Landroid/graphics/Bitmap;
    :catch_97
    move-exception v8

    .line 160
    .local v8, "e":Ljava/lang/Exception;
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->DEBUG:Z

    if-eqz v0, :cond_4b

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to open profile icon "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4b
.end method

.method public lockPressed(Z)V
    .registers 2
    .param p1, "pressed"    # Z

    .prologue
    .line 263
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mPressLock:Z

    .line 264
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->setPressed(Z)V

    .line 265
    return-void
.end method

.method protected rewriteIconPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 136
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "internal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 137
    const-string v0, "system"

    const-string v1, "data"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 139
    .end local p1    # "path":Ljava/lang/String;
    :cond_18
    return-object p1
.end method

.method public setActive(ZZLjava/lang/Runnable;)V
    .registers 11
    .param p1, "active"    # Z
    .param p2, "animate"    # Z
    .param p3, "onComplete"    # Ljava/lang/Runnable;

    .prologue
    .line 182
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mActive:Z

    if-ne v1, p1, :cond_8

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mInit:Z

    if-eqz v1, :cond_46

    .line 183
    :cond_8
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mActive:Z

    .line 185
    if-eqz p1, :cond_4e

    .line 186
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardLinearLayout;

    .line 187
    .local v0, "parent":Lcom/android/internal/policy/impl/keyguard/KeyguardLinearLayout;
    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardLinearLayout;->setTopChild(Landroid/view/View;)V

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mUserName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mContext:Landroid/content/Context;

    const v3, 0x1040915

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, ""

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 196
    .end local v0    # "parent":Lcom/android/internal/policy/impl/keyguard/KeyguardLinearLayout;
    :cond_46
    :goto_46
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mActive:Z

    const/16 v2, 0x96

    invoke-virtual {p0, v1, p2, v2, p3}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->updateVisualsForActive(ZZILjava/lang/Runnable;)V

    .line 197
    return-void

    .line 193
    :cond_4e
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mUserName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_46
.end method

.method public setPressed(Z)V
    .registers 3
    .param p1, "pressed"    # Z

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mPressLock:Z

    if-eqz v0, :cond_7

    if-nez p1, :cond_7

    .line 260
    :cond_6
    :goto_6
    return-void

    .line 255
    :cond_7
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mPressLock:Z

    if-nez v0, :cond_13

    if-eqz p1, :cond_13

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 256
    :cond_13
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setPressed(Z)V

    .line 257
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/internal/policy/impl/keyguard/KeyguardCircleFramedDrawable;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardCircleFramedDrawable;->setPressed(Z)V

    .line 258
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mUserImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_6
.end method

.method updateVisualsForActive(ZZILjava/lang/Runnable;)V
    .registers 18
    .param p1, "active"    # Z
    .param p2, "animate"    # Z
    .param p3, "duration"    # I
    .param p4, "onComplete"    # Ljava/lang/Runnable;

    .prologue
    .line 201
    if-eqz p1, :cond_5a

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mActiveAlpha:F

    .line 202
    .local v6, "finalAlpha":F
    :goto_4
    if-eqz p1, :cond_5d

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mInactiveAlpha:F

    .line 203
    .local v5, "initAlpha":F
    :goto_8
    if-eqz p1, :cond_60

    const v4, 0x3f35c28f

    .line 204
    .local v4, "finalScale":F
    :goto_d
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/internal/policy/impl/keyguard/KeyguardCircleFramedDrawable;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardCircleFramedDrawable;->getScale()F

    move-result v3

    .line 205
    .local v3, "initScale":F
    if-eqz p1, :cond_67

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mActiveTextAlpha:F

    const/high16 v2, 0x437f0000

    mul-float/2addr v1, v2

    float-to-int v8, v1

    .line 207
    .local v8, "finalTextAlpha":I
    :goto_1b
    if-eqz p1, :cond_6e

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mInactiveTextAlpha:F

    const/high16 v2, 0x437f0000

    mul-float/2addr v1, v2

    float-to-int v7, v1

    .line 209
    .local v7, "initTextAlpha":I
    :goto_23
    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mTextColor:I

    .line 210
    .local v9, "textColor":I
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mUserName:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 212
    if-eqz p2, :cond_75

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mTouched:Z

    if-eqz v1, :cond_75

    .line 213
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_96

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v10

    .line 214
    .local v10, "va":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar$1;

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;FFFFII)V

    invoke-virtual {v10, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 227
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar$2;

    move-object/from16 v0, p4

    invoke-direct {v1, p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;Ljava/lang/Runnable;)V

    invoke-virtual {v10, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 235
    move/from16 v0, p3

    int-to-long v1, v0

    invoke-virtual {v10, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 236
    invoke-virtual {v10}, Landroid/animation/ValueAnimator;->start()V

    .line 246
    .end local v10    # "va":Landroid/animation/ValueAnimator;
    :cond_56
    :goto_56
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mTouched:Z

    .line 247
    return-void

    .line 201
    .end local v3    # "initScale":F
    .end local v4    # "finalScale":F
    .end local v5    # "initAlpha":F
    .end local v6    # "finalAlpha":F
    .end local v7    # "initTextAlpha":I
    .end local v8    # "finalTextAlpha":I
    .end local v9    # "textColor":I
    :cond_5a
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mInactiveAlpha:F

    goto :goto_4

    .line 202
    .restart local v6    # "finalAlpha":F
    :cond_5d
    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mActiveAlpha:F

    goto :goto_8

    .line 203
    .restart local v5    # "initAlpha":F
    :cond_60
    const/high16 v1, 0x3f800000

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mActiveScale:F

    div-float v4, v1, v2

    goto :goto_d

    .line 205
    .restart local v3    # "initScale":F
    .restart local v4    # "finalScale":F
    :cond_67
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mInactiveTextAlpha:F

    const/high16 v2, 0x437f0000

    mul-float/2addr v1, v2

    float-to-int v8, v1

    goto :goto_1b

    .line 207
    .restart local v8    # "finalTextAlpha":I
    :cond_6e
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mActiveTextAlpha:F

    const/high16 v2, 0x437f0000

    mul-float/2addr v1, v2

    float-to-int v7, v1

    goto :goto_23

    .line 238
    .restart local v7    # "initTextAlpha":I
    .restart local v9    # "textColor":I
    :cond_75
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/internal/policy/impl/keyguard/KeyguardCircleFramedDrawable;

    invoke-virtual {v1, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardCircleFramedDrawable;->setScale(F)V

    .line 239
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mUserImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 240
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mUserName:Landroid/widget/TextView;

    const/16 v2, 0xff

    const/16 v11, 0xff

    const/16 v12, 0xff

    invoke-static {v8, v2, v11, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 241
    if-eqz p4, :cond_56

    .line 242
    move-object/from16 v0, p4

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->post(Ljava/lang/Runnable;)Z

    goto :goto_56

    .line 213
    :array_96
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method
