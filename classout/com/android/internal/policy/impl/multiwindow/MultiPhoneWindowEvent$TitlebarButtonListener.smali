.class Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TitlebarButtonListener;
.super Ljava/lang/Object;
.source "MultiPhoneWindowEvent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TitlebarButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V
    .registers 2

    .prologue
    .line 2098
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TitlebarButtonListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;
    .param p2, "x1"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1;

    .prologue
    .line 2098
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TitlebarButtonListener;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V

    return-void
.end method

.method private sendDownAndUpKeyEvents(I)V
    .registers 20
    .param p1, "keyCode"    # I

    .prologue
    .line 2147
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 2150
    .local v15, "token":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2151
    .local v1, "downTime":J
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/16 v11, 0x8

    const/16 v12, 0x101

    const/4 v13, 0x0

    move-wide v3, v1

    move/from16 v6, p1

    invoke-static/range {v1 .. v13}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v14

    .line 2154
    .local v14, "down":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v14, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 2156
    invoke-virtual {v14}, Landroid/view/KeyEvent;->recycle()V

    .line 2159
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 2160
    .local v3, "upTime":J
    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/16 v11, 0x8

    const/16 v12, 0x101

    const/4 v13, 0x0

    move/from16 v6, p1

    invoke-static/range {v1 .. v13}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v17

    .line 2163
    .local v17, "up":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v5, v0, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 2165
    invoke-virtual/range {v17 .. v17}, Landroid/view/KeyEvent;->recycle()V

    .line 2167
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2168
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2101
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TitlebarButtonListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowMode()I

    move-result v0

    .line 2103
    .local v0, "windowMode":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_64

    .line 2132
    :cond_13
    :goto_13
    :pswitch_13
    return-void

    .line 2105
    :pswitch_14
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TitlebarButtonListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->multiWindow(IZ)V

    goto :goto_13

    .line 2109
    :pswitch_1a
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TitlebarButtonListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasGuideLayout:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1200(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 2110
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TitlebarButtonListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    # invokes: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->forceHideInputMethod()Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1800(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z

    .line 2111
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TitlebarButtonListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isPinup(I)Z

    move-result v4

    if-nez v4, :cond_33

    :goto_2f
    invoke-virtual {v3, v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->multiWindow(IZ)V

    goto :goto_13

    :cond_33
    move v1, v2

    goto :goto_2f

    .line 2116
    :pswitch_35
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TitlebarButtonListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasGuideLayout:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1200(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 2117
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TitlebarButtonListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    # invokes: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->forceHideInputMethod()Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1800(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z

    .line 2118
    :cond_42
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TitlebarButtonListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->minimizeWindow(IZ)V

    goto :goto_13

    .line 2122
    :pswitch_48
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TitlebarButtonListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasGuideLayout:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1200(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 2123
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TitlebarButtonListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->normalWindow(I)V

    goto :goto_13

    .line 2127
    :pswitch_56
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TitlebarButtonListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasGuideLayout:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1200(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 2128
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TitlebarButtonListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->exitWindow(Z)V

    goto :goto_13

    .line 2103
    :pswitch_data_64
    .packed-switch 0x1020406
        :pswitch_1a
        :pswitch_13
        :pswitch_13
        :pswitch_35
        :pswitch_13
        :pswitch_14
        :pswitch_13
        :pswitch_48
        :pswitch_13
        :pswitch_56
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2136
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_22

    .line 2143
    const/4 v1, 0x0

    :goto_8
    return v1

    .line 2138
    :pswitch_9
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.action.ARRANGE_FREESTYLE_WINDOWS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2139
    .local v0, "arrangeIntent":Landroid/content/Intent;
    const-string v1, "com.sec.android.extra.ARRAGE_MODE"

    const/16 v2, 0x200

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2140
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TitlebarButtonListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$800(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2141
    const/4 v1, 0x1

    goto :goto_8

    .line 2136
    :pswitch_data_22
    .packed-switch 0x102040b
        :pswitch_9
    .end packed-switch
.end method
