.class Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MultiPhoneWindowEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchBroadcastReceiver"
.end annotation


# instance fields
.field private mBackupX:I

.field private mBackupY:I

.field private mIsHide:Z

.field final synthetic this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 2171
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2172
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;->mIsHide:Z

    .line 2173
    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;->mBackupX:I

    .line 2174
    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;->mBackupY:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;
    .param p2, "x1"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1;

    .prologue
    .line 2171
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x0

    .line 2178
    const-string v5, "mw_action"

    invoke-virtual {p2, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2179
    .local v0, "action":I
    const-string v5, "mw_x"

    invoke-virtual {p2, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 2180
    .local v3, "x":I
    const-string v5, "mw_y"

    invoke-virtual {p2, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 2181
    .local v4, "y":I
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 2183
    .local v1, "p":Landroid/view/WindowManager$LayoutParams;
    packed-switch v0, :pswitch_data_8e

    .line 2209
    :cond_24
    :goto_24
    return-void

    .line 2185
    :pswitch_25
    new-instance v2, Landroid/graphics/Rect;

    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v7, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v8, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v7, v8

    iget v8, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v9, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v8, v9

    invoke-direct {v2, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2187
    .local v2, "rect":Landroid/graphics/Rect;
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;->mIsHide:Z

    if-nez v5, :cond_24

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 2188
    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;->mBackupX:I

    .line 2189
    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;->mBackupY:I

    .line 2190
    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaxSize:Landroid/graphics/Point;
    invoke-static {v6}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$2400(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->x:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2191
    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaxSize:Landroid/graphics/Point;
    invoke-static {v6}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$2400(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->y:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2192
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;
    invoke-static {v5}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$500(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v1, v10}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;Z)V

    .line 2193
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;->mIsHide:Z

    goto :goto_24

    .line 2199
    .end local v2    # "rect":Landroid/graphics/Rect;
    :pswitch_71
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;->mIsHide:Z

    if-eqz v5, :cond_24

    .line 2200
    iget v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;->mBackupX:I

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2201
    iget v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;->mBackupY:I

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2202
    iput v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;->mBackupX:I

    .line 2203
    iput v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;->mBackupY:I

    .line 2204
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;
    invoke-static {v5}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$500(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v1, v10}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;Z)V

    .line 2205
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;->mIsHide:Z

    goto :goto_24

    .line 2183
    nop

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_71
        :pswitch_25
        :pswitch_71
    .end packed-switch
.end method
