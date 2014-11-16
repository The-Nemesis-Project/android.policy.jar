.class final Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;
.super Landroid/app/Dialog;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GlobalActionsDialog"
.end annotation


# instance fields
.field private final mAlert:Lcom/android/internal/app/AlertController;

.field private mCancelListener:Landroid/content/DialogInterface$OnClickListener;

.field private mCancelOnUp:Z

.field private final mContext:Landroid/content/Context;

.field private mDisableExclusiveOptionsFlag:I

.field private mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

.field private final mHandler:Landroid/os/Handler;

.field private mIntercepted:Z

.field private final mWindowTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/app/AlertController$AlertParams;Landroid/os/Handler;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Lcom/android/internal/app/AlertController$AlertParams;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 2715
    invoke-static {p1}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getDialogTheme(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2713
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mDisableExclusiveOptionsFlag:I

    .line 2727
    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog$1;-><init>(Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    .line 2716
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mContext:Landroid/content/Context;

    .line 2717
    iput-object p3, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mHandler:Landroid/os/Handler;

    .line 2718
    new-instance v0, Lcom/android/internal/app/AlertController;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/android/internal/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    .line 2719
    const-string v0, "VZW"

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mSalesCode:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$1100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 2720
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10401b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 2721
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 2724
    :goto_55
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mWindowTouchSlop:I

    .line 2725
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {p2, v0}, Lcom/android/internal/app/AlertController$AlertParams;->apply(Lcom/android/internal/app/AlertController;)V

    .line 2726
    return-void

    .line 2723
    :cond_65
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10401cc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_55
.end method

.method static synthetic access$4900(Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    .prologue
    .line 2705
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static getDialogTheme(Landroid/content/Context;)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2733
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2734
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010309

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2736
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method public static hasPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 2841
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2842
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x1

    .line 2844
    .local v1, "hasPkg":Z
    const/16 v3, 0x80

    :try_start_7
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_a} :catch_b

    .line 2849
    :goto_a
    return v1

    .line 2845
    :catch_b
    move-exception v0

    .line 2846
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .line 2847
    const-string v3, "Utils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package not found : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method public static isTalkBackEnabled(Landroid/content/Context;)Z
    .registers 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2950
    const/16 v1, 0x3a

    .line 2951
    .local v1, "ENABLED_SERVICES_SEPARATOR":C
    const-string v0, "com.google.android.marvin.talkback"

    .line 2952
    .local v0, "DEFAULT_SCREENREADER_NAME":Ljava/lang/String;
    new-instance v6, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v7, 0x3a

    invoke-direct {v6, v7}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 2953
    .local v6, "sStringColonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "enabled_accessibility_services"

    const/4 v9, -0x2

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 2955
    .local v5, "enabledServicesSetting":Ljava/lang/String;
    if-nez v5, :cond_1a

    .line 2956
    const-string v5, ""

    .line 2958
    :cond_1a
    move-object v2, v6

    .line 2959
    .local v2, "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v2, v5}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 2960
    :cond_1e
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3c

    .line 2961
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v3

    .line 2962
    .local v3, "componentNameString":Ljava/lang/String;
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 2963
    .local v4, "enabledService":Landroid/content/ComponentName;
    if-eqz v4, :cond_1e

    .line 2964
    const-string v7, "com.google.android.marvin.talkback"

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 2965
    const/4 v7, 0x1

    .line 2968
    .end local v3    # "componentNameString":Ljava/lang/String;
    .end local v4    # "enabledService":Landroid/content/ComponentName;
    :goto_3b
    return v7

    :cond_3c
    const/4 v7, 0x0

    goto :goto_3b
.end method

.method public static turnOffTalkBack(Landroid/content/Context;)Z
    .registers 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v12, 0x3a

    const/4 v8, 0x0

    const/4 v11, -0x2

    .line 2971
    const/16 v1, 0x3a

    .line 2972
    .local v1, "ENABLED_SERVICES_SEPARATOR":C
    const-string v0, "com.google.android.marvin.talkback"

    .line 2973
    .local v0, "DEFAULT_SCREENREADER_NAME":Ljava/lang/String;
    new-instance v6, Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-direct {v6, v12}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 2974
    .local v6, "sStringColonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "enabled_accessibility_services"

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 2976
    .local v5, "enabledServicesSetting":Ljava/lang/String;
    if-nez v5, :cond_1a

    .line 2997
    :cond_19
    :goto_19
    return v8

    .line 2979
    :cond_1a
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_19

    .line 2982
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2983
    .local v2, "builder":Ljava/lang/StringBuilder;
    move-object v3, v6

    .line 2984
    .local v3, "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v3, v5}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 2985
    :cond_29
    :goto_29
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4a

    .line 2986
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v4

    .line 2987
    .local v4, "componentNameString":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_3c

    .line 2988
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2990
    :cond_3c
    if-eqz v4, :cond_29

    const-string v8, "com.google.android.marvin.talkback"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_29

    .line 2991
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_29

    .line 2994
    .end local v4    # "componentNameString":Ljava/lang/String;
    :cond_4a
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.android.settings.action.talkback_off"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2995
    .local v7, "talk_back_off":Landroid/content/Intent;
    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2996
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "enabled_accessibility_services"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 2997
    const/4 v8, 0x1

    goto :goto_19
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 16
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 2762
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    if-eqz v2, :cond_b0

    .line 2763
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    .line 2764
    .local v8, "action":I
    if-nez v8, :cond_7e

    .line 2765
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    .line 2766
    .local v9, "decor":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v10, v2

    .line 2767
    .local v10, "eventX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v11, v2

    .line 2768
    .local v11, "eventY":I
    sget-boolean v2, Lcom/android/internal/policy/impl/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v2, :cond_29

    .line 2769
    const-string v2, "GlobalActions"

    const-string v3, "dispatchTouchEvent() of GlobalActionsDialog inside action == MotionEvent.ACTION_DOWN "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2770
    :cond_29
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mIntercepted:Z

    if-ne v2, v13, :cond_60

    .line 2771
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->isTalkBackExclusiveOptionEnabled(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "option_flag"

    invoke-virtual {v2, v3, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mDisableExclusiveOptionsFlag:I

    .line 2772
    sget-boolean v2, Lcom/android/internal/policy/impl/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v2, :cond_59

    .line 2773
    const-string v2, "GlobalActions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchTouchEvent() of GlobalActionsDialog inside calling  turnOffTalkBackExclusiveOptions with mDisableExclusiveOptionsFlag =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mDisableExclusiveOptionsFlag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2774
    :cond_59
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mDisableExclusiveOptionsFlag:I

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->turnOffTalkBackExclusiveOptions(Landroid/content/Context;I)V

    .line 2776
    :cond_60
    iget v2, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mWindowTouchSlop:I

    neg-int v2, v2

    if-lt v10, v2, :cond_7c

    iget v2, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mWindowTouchSlop:I

    neg-int v2, v2

    if-lt v11, v2, :cond_7c

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mWindowTouchSlop:I

    add-int/2addr v2, v3

    if-ge v10, v2, :cond_7c

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mWindowTouchSlop:I

    add-int/2addr v2, v3

    if-lt v11, v2, :cond_7e

    .line 2780
    :cond_7c
    iput-boolean v13, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    .line 2784
    .end local v9    # "decor":Landroid/view/View;
    .end local v10    # "eventX":I
    .end local v11    # "eventY":I
    :cond_7e
    :try_start_7e
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mIntercepted:Z

    if-nez v2, :cond_b5

    .line 2785
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    invoke-virtual {v2, p1}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mIntercepted:Z

    .line 2786
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mIntercepted:Z

    if-eqz v2, :cond_a3

    .line 2787
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2788
    .local v0, "now":J
    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 2790
    const/16 v2, 0x1002

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 2791
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mCancelOnUp:Z
    :try_end_a3
    .catchall {:try_start_7e .. :try_end_a3} :catchall_c9

    .line 2797
    .end local v0    # "now":J
    :cond_a3
    if-ne v8, v13, :cond_b0

    .line 2798
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    if-eqz v2, :cond_ac

    .line 2799
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    .line 2801
    :cond_ac
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    .line 2802
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mIntercepted:Z

    .line 2806
    .end local v8    # "action":I
    :cond_b0
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :cond_b4
    :goto_b4
    return v2

    .line 2794
    .restart local v8    # "action":I
    :cond_b5
    :try_start_b5
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    invoke-virtual {v2, p1}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_ba
    .catchall {:try_start_b5 .. :try_end_ba} :catchall_c9

    move-result v2

    .line 2797
    if-ne v8, v13, :cond_b4

    .line 2798
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    if-eqz v3, :cond_c4

    .line 2799
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    .line 2801
    :cond_c4
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    .line 2802
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mIntercepted:Z

    goto :goto_b4

    .line 2797
    :catchall_c9
    move-exception v2

    if-ne v8, v13, :cond_d7

    .line 2798
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    if-eqz v3, :cond_d3

    .line 2799
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    .line 2801
    :cond_d3
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    .line 2802
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mIntercepted:Z

    :cond_d7
    throw v2
.end method

.method public getListView()Landroid/widget/ListView;
    .registers 2

    .prologue
    .line 2809
    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$2900()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2810
    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$3500()Landroid/widget/ListView;

    move-result-object v0

    .line 2812
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0}, Lcom/android/internal/app/AlertController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    goto :goto_a
.end method

.method public isAutoAirViewSupported()Z
    .registers 3

    .prologue
    .line 3091
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3093
    const/4 v0, 0x1

    .line 3095
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public isTalkBackExclusiveOptionEnabled(Landroid/content/Context;)Landroid/os/Bundle;
    .registers 33
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2853
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 2854
    .local v20, "res":Landroid/content/res/Resources;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    .line 2855
    .local v21, "resolver":Landroid/content/ContentResolver;
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 2856
    .local v7, "data":Landroid/os/Bundle;
    const/4 v12, 0x1

    .line 2857
    .local v12, "is_enabled":Z
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v28

    const-string v29, "com.sec.android.smartface.smart_scroll"

    invoke-virtual/range {v28 .. v29}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v15

    .line 2858
    .local v15, "mHasSmartScroll":Z
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v28

    const-string v29, "com.sec.android.smartface.smart_pause"

    invoke-virtual/range {v28 .. v29}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v13

    .line 2859
    .local v13, "mHasSmartPause":Z
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v28

    const-string v29, "com.sec.android.smartface.smart_stay"

    invoke-virtual/range {v28 .. v29}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v16

    .line 2860
    .local v16, "mHasSmartStay":Z
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v28

    const-string v29, "com.sec.android.smartface.smart_rotation"

    invoke-virtual/range {v28 .. v29}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v14

    .line 2861
    .local v14, "mHasSmartRotation":Z
    const/16 v18, 0x0

    .line 2862
    .local v18, "option_flag":I
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const v29, 0x1040af1

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "\n"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2866
    .local v8, "dialog_content":Ljava/lang/String;
    const/4 v6, 0x0

    .line 2867
    .local v6, "assistantmenu":I
    const/4 v11, 0x0

    .line 2868
    .local v11, "interactioncontrol":I
    const/4 v4, 0x0

    .line 2869
    .local v4, "airgesture":I
    const/4 v9, 0x0

    .line 2870
    .local v9, "fingerairview":I
    const/16 v19, 0x0

    .line 2871
    .local v19, "penairview":I
    const/16 v24, 0x0

    .line 2872
    .local v24, "smartscreen":I
    const/16 v17, 0x0

    .line 2873
    .local v17, "multiwindow":I
    const/4 v5, 0x0

    .line 2874
    .local v5, "allSoundOff":I
    const/16 v27, 0x0

    .line 2875
    .local v27, "writingbuddy":I
    const/4 v10, 0x0

    .line 2876
    .local v10, "hoverZoom":I
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v28

    const-string v29, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-virtual/range {v28 .. v29}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_a8

    .line 2877
    add-int/lit8 v18, v18, 0x10

    .line 2878
    const-string v28, "air_motion_engine"

    const/16 v29, 0x0

    const/16 v30, -0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 2879
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "\n- "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const v29, 0x1040af2

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2881
    :cond_a8
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v28

    const-string v29, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-virtual/range {v28 .. v29}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_ce

    .line 2882
    add-int/lit8 v18, v18, 0x8

    .line 2883
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->isAutoAirViewSupported()Z

    move-result v28

    if-eqz v28, :cond_37d

    .line 2884
    const-string v28, "air_view_master_onoff"

    const/16 v29, 0x0

    const/16 v30, -0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    .line 2889
    :cond_ce
    :goto_ce
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v28

    const-string v29, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-virtual/range {v28 .. v29}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_fa

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v28

    const-string v29, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING"

    invoke-virtual/range {v28 .. v29}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_fa

    .line 2891
    add-int/lit8 v18, v18, 0x4

    .line 2892
    const-string v28, "pen_hovering"

    const/16 v29, 0x0

    const/16 v30, -0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v19

    .line 2894
    :cond_fa
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v28

    const-string v29, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-virtual/range {v28 .. v29}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_11e

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v28

    const-string v29, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-virtual/range {v28 .. v29}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_142

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v28

    const-string v29, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING"

    invoke-virtual/range {v28 .. v29}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_142

    .line 2897
    :cond_11e
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "\n- "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const v29, 0x1040af3

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2899
    :cond_142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string v29, "com.samsung.android.app.assistantmenu"

    invoke-static/range {v28 .. v29}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_188

    .line 2900
    add-int/lit8 v18, v18, 0x20

    .line 2901
    const-string v28, "assistant_menu"

    const/16 v29, 0x0

    const/16 v30, -0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    .line 2902
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "\n- "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const v29, 0x1040af4

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2904
    :cond_188
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v28

    const-string v29, "SEC_PRODUCT_FEATURE_SETTINGS_SUPPORT_GRID_UI"

    invoke-virtual/range {v28 .. v29}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_210

    if-nez v15, :cond_19c

    if-nez v13, :cond_19c

    if-nez v16, :cond_19c

    if-eqz v14, :cond_210

    .line 2906
    :cond_19c
    add-int/lit8 v18, v18, 0x2

    .line 2907
    const-string v28, "intelligent_sleep_mode"

    const/16 v29, 0x0

    const/16 v30, -0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v26

    .line 2908
    .local v26, "smartstay":I
    const-string v28, "intelligent_rotation_mode"

    const/16 v29, 0x0

    const/16 v30, -0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v23

    .line 2909
    .local v23, "smartrotation":I
    const-string v28, "smart_pause"

    const/16 v29, 0x0

    const/16 v30, -0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v22

    .line 2910
    .local v22, "smartpause":I
    const-string v28, "smart_scroll"

    const/16 v29, 0x0

    const/16 v30, -0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v25

    .line 2911
    .local v25, "smartscroll":I
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "\n- "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const v29, 0x1040af5

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2912
    or-int v28, v26, v23

    or-int v28, v28, v22

    or-int v24, v28, v25

    .line 2915
    .end local v22    # "smartpause":I
    .end local v23    # "smartrotation":I
    .end local v25    # "smartscroll":I
    .end local v26    # "smartstay":I
    :cond_210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string v29, "com.samsung.android.app.accesscontrol"

    invoke-static/range {v28 .. v29}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_256

    .line 2916
    add-int/lit8 v18, v18, 0x40

    .line 2917
    const-string v28, "access_control_use"

    const/16 v29, 0x0

    const/16 v30, -0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    .line 2918
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "\n- "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const v29, 0x1040af7

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2920
    :cond_256
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v28

    const-string v29, "com.sec.feature.multiwindow"

    invoke-virtual/range {v28 .. v29}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_29a

    .line 2921
    add-int/lit8 v18, v18, 0x1

    .line 2922
    const-string v28, "multi_window_enabled"

    const/16 v29, 0x1

    const/16 v30, -0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    .line 2923
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "\n- "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const v29, 0x1040af6

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2926
    :cond_29a
    move/from16 v0, v18

    add-int/lit16 v0, v0, 0x200

    move/from16 v18, v0

    .line 2927
    const-string v28, "all_sound_off"

    const/16 v29, 0x0

    const/16 v30, -0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    .line 2928
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "\n- "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const v29, 0x1040aff

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2930
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v28

    const-string v29, "SEC_PRODUCT_FEATURE_SETTINGS_SUPPORT_GRID_UI"

    invoke-virtual/range {v28 .. v29}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_330

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->isAutoAirViewSupported()Z

    move-result v28

    if-nez v28, :cond_2f4

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v28

    const-string v29, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_AIR_VIEW"

    invoke-virtual/range {v28 .. v29}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_330

    .line 2932
    :cond_2f4
    move/from16 v0, v18

    add-int/lit16 v0, v0, 0x80

    move/from16 v18, v0

    .line 2933
    const-string v28, "pen_writing_buddy"

    const/16 v29, 0x0

    const/16 v30, -0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v27

    .line 2934
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "\n- "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const v29, 0x1040afe

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2937
    :cond_330
    const-string v28, "com.sec.feature.overlaymagnifier"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_350

    .line 2938
    move/from16 v0, v18

    add-int/lit16 v0, v0, 0x2000

    move/from16 v18, v0

    .line 2939
    const-string v28, "accessibility_magnifier"

    const/16 v29, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 2942
    :cond_350
    or-int v28, v11, v6

    or-int v28, v28, v4

    or-int v28, v28, v9

    or-int v28, v28, v19

    or-int v28, v28, v24

    or-int v28, v28, v17

    or-int v28, v28, v5

    or-int v28, v28, v27

    or-int v28, v28, v10

    if-lez v28, :cond_391

    const/4 v12, 0x1

    .line 2944
    :goto_365
    const-string v28, "is_enabled"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2945
    const-string v28, "option_flag"

    move-object/from16 v0, v28

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2946
    const-string v28, "dialog_content"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2947
    return-object v7

    .line 2886
    :cond_37d
    const-string v28, "finger_air_view"

    const/16 v29, 0x0

    const/16 v30, -0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    goto/16 :goto_ce

    .line 2942
    :cond_391
    const/4 v12, 0x0

    goto :goto_365
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 2817
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2818
    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$2900()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2819
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0}, Lcom/android/internal/app/AlertController;->installContent()V

    .line 2821
    :cond_e
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2824
    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$2900()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2825
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/AlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2826
    const/4 v0, 0x1

    .line 2829
    :goto_f
    return v0

    :cond_10
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_f
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2833
    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$2900()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2834
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/AlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2835
    const/4 v0, 0x1

    .line 2838
    :goto_f
    return v0

    :cond_10
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_f
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 2744
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->canEnableAccessibilityViaGesture(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2745
    new-instance v0, Lcom/android/internal/policy/impl/EnableAccessibilityController;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/EnableAccessibilityController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    .line 2746
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 2751
    :goto_15
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 2752
    return-void

    .line 2748
    :cond_19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    .line 2749
    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_15
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 2755
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    if-eqz v0, :cond_9

    .line 2756
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->onDestroy()V

    .line 2758
    :cond_9
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 2759
    return-void
.end method

.method public turnOffTalkBackExclusiveOptions(Landroid/content/Context;I)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "option_flag"    # I

    .prologue
    .line 3000
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 3002
    .local v5, "resolver":Landroid/content/ContentResolver;
    and-int/lit8 v8, p2, 0x20

    if-lez v8, :cond_30

    .line 3003
    sget-boolean v8, Lcom/android/internal/policy/impl/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v8, :cond_13

    .line 3004
    const-string v8, "GlobalActions"

    const-string v9, "turnOffTalkBackExclusiveOptions - 0x20"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3005
    :cond_13
    const-string v8, "assistant_menu"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v5, v8, v9, v10}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 3006
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3007
    .local v2, "assistantMenu":Landroid/content/Intent;
    new-instance v8, Landroid/content/ComponentName;

    const-string v9, "com.samsung.android.app.assistantmenu"

    const-string v10, "com.samsung.android.app.assistantmenu.serviceframework.AssistantMenuService"

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3009
    invoke-virtual {p1, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 3012
    .end local v2    # "assistantMenu":Landroid/content/Intent;
    :cond_30
    and-int/lit8 v8, p2, 0x10

    if-lez v8, :cond_58

    .line 3013
    sget-boolean v8, Lcom/android/internal/policy/impl/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v8, :cond_3f

    .line 3014
    const-string v8, "GlobalActions"

    const-string v9, "turnOffTalkBackExclusiveOptions - 0x10"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3015
    :cond_3f
    const-string v8, "air_motion_engine"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v5, v8, v9, v10}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 3016
    new-instance v0, Landroid/content/Intent;

    const-string v8, "com.sec.gesture.AIR_MOTION_SETTINGS_CHANGED"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3017
    .local v0, "air_motion_changed":Landroid/content/Intent;
    const-string v8, "isEnable"

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3018
    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3021
    .end local v0    # "air_motion_changed":Landroid/content/Intent;
    :cond_58
    and-int/lit8 v8, p2, 0x8

    if-lez v8, :cond_87

    .line 3022
    sget-boolean v8, Lcom/android/internal/policy/impl/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v8, :cond_67

    .line 3023
    const-string v8, "GlobalActions"

    const-string v9, "turnOffTalkBackExclusiveOptions - 0x08"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3024
    :cond_67
    const-string v8, "finger_air_view"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v5, v8, v9, v10}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 3025
    const-string v8, "finger_air_view_highlight"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v5, v8, v9, v10}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 3027
    new-instance v3, Landroid/content/Intent;

    const-string v8, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3028
    .local v3, "finger_air_view_changed":Landroid/content/Intent;
    const-string v8, "isEnable"

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3029
    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v3, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3032
    .end local v3    # "finger_air_view_changed":Landroid/content/Intent;
    :cond_87
    and-int/lit8 v8, p2, 0x40

    if-lez v8, :cond_bd

    .line 3033
    const-string v8, "Utils"

    const-string v9, "turnOffTalkBackExclusiveOptions - 0x40"

    invoke-static {v8, v9}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3034
    const-string v8, "access_control_use"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v5, v8, v9, v10}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 3035
    const-string v8, "access_control_enabled"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v5, v8, v9, v10}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 3036
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3037
    .local v4, "icIntent":Landroid/content/Intent;
    new-instance v8, Landroid/content/ComponentName;

    const-string v9, "com.samsung.android.app.accesscontrol"

    const-string v10, "com.samsung.android.app.accesscontrol.AccessControlMainService"

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3039
    invoke-virtual {p1, v4}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 3040
    const-string v8, "Utils"

    const-string v9, "turnOffTalkBackExclusiveOptions - 0x40"

    invoke-static {v8, v9}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3043
    .end local v4    # "icIntent":Landroid/content/Intent;
    :cond_bd
    and-int/lit8 v8, p2, 0x4

    if-lez v8, :cond_d3

    .line 3044
    sget-boolean v8, Lcom/android/internal/policy/impl/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v8, :cond_cc

    .line 3045
    const-string v8, "GlobalActions"

    const-string v9, "turnOffTalkBackExclusiveOptions - 0x04"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3046
    :cond_cc
    const-string v8, "pen_hovering"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v5, v8, v9, v10}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 3049
    :cond_d3
    and-int/lit8 v8, p2, 0x2

    if-lez v8, :cond_122

    .line 3050
    sget-boolean v8, Lcom/android/internal/policy/impl/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v8, :cond_e2

    .line 3051
    const-string v8, "GlobalActions"

    const-string v9, "turnOffTalkBackExclusiveOptions - 0x02"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3052
    :cond_e2
    const-string v8, "intelligent_sleep_mode"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v5, v8, v9, v10}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 3053
    const-string v8, "intelligent_rotation_mode"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v5, v8, v9, v10}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 3054
    const-string v8, "smart_pause"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v5, v8, v9, v10}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 3055
    new-instance v6, Landroid/content/Intent;

    const-string v8, "com.sec.SMART_PAUSE_CHANGED"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3056
    .local v6, "smart_pause_changed":Landroid/content/Intent;
    const-string v8, "isEnable"

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3057
    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v6, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3058
    const-string v8, "smart_scroll"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v5, v8, v9, v10}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 3059
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.sec.SMART_SCROLL_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3060
    .local v7, "smart_scroll_changed":Landroid/content/Intent;
    const-string v8, "isEnable"

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3061
    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v7, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3064
    .end local v6    # "smart_pause_changed":Landroid/content/Intent;
    .end local v7    # "smart_scroll_changed":Landroid/content/Intent;
    :cond_122
    and-int/lit8 v8, p2, 0x1

    if-lez v8, :cond_138

    .line 3065
    sget-boolean v8, Lcom/android/internal/policy/impl/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v8, :cond_131

    .line 3066
    const-string v8, "GlobalActions"

    const-string v9, "turnOffTalkBackExclusiveOptions - 0x01"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3067
    :cond_131
    const-string v8, "multi_window_enabled"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v5, v8, v9, v10}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 3070
    :cond_138
    and-int/lit16 v8, p2, 0x80

    if-lez v8, :cond_14a

    .line 3071
    const-string v8, "Utils"

    const-string v9, "turnOffTalkBackExclusiveOptions - 0x80"

    invoke-static {v8, v9}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3072
    const-string v8, "pen_writing_buddy"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v5, v8, v9, v10}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 3075
    :cond_14a
    and-int/lit16 v8, p2, 0x200

    if-lez v8, :cond_172

    .line 3076
    sget-boolean v8, Lcom/android/internal/policy/impl/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v8, :cond_159

    .line 3077
    const-string v8, "Utils"

    const-string v9, "turnOffTalkBackExclusiveOptions - 0x200"

    invoke-static {v8, v9}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3078
    :cond_159
    new-instance v1, Landroid/content/Intent;

    const-string v8, "android.settings.ALL_SOUND_MUTE"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3079
    .local v1, "all_sound_off_intent":Landroid/content/Intent;
    const-string v8, "all_sound_off"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v5, v8, v9, v10}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 3080
    const-string v8, "mute"

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3081
    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v1, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3085
    .end local v1    # "all_sound_off_intent":Landroid/content/Intent;
    :cond_172
    and-int/lit16 v8, p2, 0x2000

    if-lez v8, :cond_18b

    const-string v8, "com.sec.feature.overlaymagnifier"

    invoke-static {p1, v8}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_18b

    .line 3086
    const-string v8, "Utils"

    const-string v9, "turnOffTalkBackExclusiveOptions - 0x2000"

    invoke-static {v8, v9}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3087
    const-string v8, "accessibility_magnifier"

    const/4 v9, 0x0

    invoke-static {v5, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3089
    :cond_18b
    return-void
.end method
