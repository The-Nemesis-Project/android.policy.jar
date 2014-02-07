.class public Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;
.super Landroid/widget/LinearLayout;
.source "SViewCoverWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Clock"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock$TimeFormatChangeObserver;
    }
.end annotation


# static fields
.field private static final mAmPmFormat:Ljava/lang/String; = "AA"

.field private static final mTime24HFormat:Ljava/lang/String; = "kk:mm"

.field private static final mTimeFormat:Ljava/lang/String; = "h:mm"


# instance fields
.field private mAmPm:Landroid/widget/TextView;

.field mCalendar:Ljava/util/Calendar;

.field private mClockRoot:Landroid/widget/LinearLayout;

.field private mClockView:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mDayofWeek:Landroid/widget/TextView;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIs24HTime:Z

.field private mIsCover2:Z

.field private mMonthandDay:Landroid/widget/TextView;

.field private mTime:Landroid/widget/TextView;

.field private mTimeFormatChangeObserver:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock$TimeFormatChangeObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mIs24HTime:Z

    .line 95
    new-instance v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock$1;-><init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 112
    iput-object p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mContext:Landroid/content/Context;

    .line 113
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->initClock(Landroid/content/Context;)V

    .line 114
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Clock()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mIs24HTime:Z

    return p1
.end method

.method public static getCurrentDateFormat(Landroid/content/Context;)Ljava/lang/String;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 264
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    .local v5, "result":Ljava/lang/StringBuilder;
    const-string v6, "yyyy"

    .line 266
    .local v6, "year":Ljava/lang/String;
    const-string v4, "MM"

    .line 267
    .local v4, "month":Ljava/lang/String;
    const-string v0, "dd"

    .line 268
    .local v0, "day":Ljava/lang/String;
    const-string v1, "-"

    .line 270
    .local v1, "divider":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v2

    .line 271
    .local v2, "formatArray":[C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_12
    array-length v7, v2

    if-ge v3, v7, :cond_3b

    .line 272
    aget-char v7, v2, v3

    const/16 v8, 0x79

    if-ne v7, v8, :cond_1e

    .line 273
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    :cond_1e
    aget-char v7, v2, v3

    const/16 v8, 0x4d

    if-ne v7, v8, :cond_27

    .line 276
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    :cond_27
    aget-char v7, v2, v3

    const/16 v8, 0x64

    if-ne v7, v8, :cond_30

    .line 279
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    :cond_30
    array-length v7, v2

    add-int/lit8 v7, v7, -0x1

    if-eq v3, v7, :cond_38

    .line 282
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    :cond_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 284
    :cond_3b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private initClock(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 118
    new-instance v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock$TimeFormatChangeObserver;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock$TimeFormatChangeObserver;-><init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mTimeFormatChangeObserver:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock$TimeFormatChangeObserver;

    .line 119
    return-void
.end method

.method private onTimeChanged()V
    .registers 14

    .prologue
    const/16 v12, 0x31

    const/4 v11, 0x0

    .line 180
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mCalendar:Ljava/util/Calendar;

    .line 181
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->access$100()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "initClock() : TimeZone ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v8, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 184
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mIs24HTime:Z

    if-eqz v8, :cond_ee

    .line 185
    const-string v8, "kk:mm"

    iget-object v9, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 186
    .local v6, "tmp":Ljava/lang/CharSequence;
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 187
    .local v5, "times":Ljava/lang/String;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v8, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mTime:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-direct {v1, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mIsCover2:Z

    if-eqz v8, :cond_61

    invoke-interface {v6, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-ne v8, v12, :cond_61

    .line 189
    const-string v8, "1"

    const-string v9, "Pc"

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 191
    :try_start_5c
    const-string v8, "UTF-8"

    invoke-static {v5, v8}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_61} :catch_e4

    .line 197
    :cond_61
    :goto_61
    iget-object v8, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mTime:Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    iget-object v8, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mTime:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v8, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mAmPm:Landroid/widget/TextView;

    if-eqz v8, :cond_76

    .line 200
    iget-object v8, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mAmPm:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 219
    :cond_76
    :goto_76
    iget-object v8, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mAmPm:Landroid/widget/TextView;

    const-string v9, "AA"

    iget-object v10, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v9, v10}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v8, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mAmPm:Landroid/widget/TextView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 223
    const-string v0, ""

    .line 224
    .local v0, "dateFormat":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->getCurrentDateFormat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 225
    .local v7, "value":Ljava/lang/String;
    const v2, 0x1040101

    .line 226
    .local v2, "resId_MM_dd":I
    const v3, 0x1040102

    .line 228
    .local v3, "resId_dd_MM":I
    iget-object v8, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mDayofWeek:Landroid/widget/TextView;

    if-eqz v8, :cond_139

    .line 229
    const v2, 0x1040104

    .line 230
    const v3, 0x1040105

    .line 236
    :goto_a1
    const-string v8, "yyyy-MM-dd"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b1

    const-string v8, "MM-dd-yyyy"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_141

    .line 237
    :cond_b1
    iget-object v8, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 241
    :cond_b7
    :goto_b7
    iget-object v8, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mDayofWeek:Landroid/widget/TextView;

    if-eqz v8, :cond_cf

    .line 242
    iget-object v8, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mDayofWeek:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mContext:Landroid/content/Context;

    const v10, 0x1040103

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v9, v10}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    :cond_cf
    iget-object v8, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mMonthandDay:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v0, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v8, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mClockView:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->getSingleTTSMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 248
    return-void

    .line 192
    .end local v0    # "dateFormat":Ljava/lang/String;
    .end local v2    # "resId_MM_dd":I
    .end local v3    # "resId_dd_MM":I
    .end local v7    # "value":Ljava/lang/String;
    :catch_e4
    move-exception v4

    .line 193
    .local v4, "t":Ljava/lang/Throwable;
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 194
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_61

    .line 202
    .end local v1    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "t":Ljava/lang/Throwable;
    .end local v5    # "times":Ljava/lang/String;
    .end local v6    # "tmp":Ljava/lang/CharSequence;
    :cond_ee
    const-string v8, "h:mm"

    iget-object v9, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 203
    .restart local v6    # "tmp":Ljava/lang/CharSequence;
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 204
    .restart local v5    # "times":Ljava/lang/String;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v8, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mTime:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-direct {v1, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    .restart local v1    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mIsCover2:Z

    if-eqz v8, :cond_11b

    invoke-interface {v6, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-ne v8, v12, :cond_11b

    .line 206
    const-string v8, "1"

    const-string v9, "Pc"

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 208
    :try_start_116
    const-string v8, "UTF-8"

    invoke-static {v5, v8}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_11b
    .catch Ljava/lang/Throwable; {:try_start_116 .. :try_end_11b} :catch_130

    .line 214
    :cond_11b
    :goto_11b
    iget-object v8, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mTime:Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    iget-object v8, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mTime:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v8, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mAmPm:Landroid/widget/TextView;

    if-eqz v8, :cond_76

    .line 217
    iget-object v8, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_76

    .line 209
    :catch_130
    move-exception v4

    .line 210
    .restart local v4    # "t":Ljava/lang/Throwable;
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 211
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_11b

    .line 232
    .end local v4    # "t":Ljava/lang/Throwable;
    .restart local v0    # "dateFormat":Ljava/lang/String;
    .restart local v2    # "resId_MM_dd":I
    .restart local v3    # "resId_dd_MM":I
    .restart local v7    # "value":Ljava/lang/String;
    :cond_139
    const v2, 0x1040101

    .line 233
    const v3, 0x1040102

    goto/16 :goto_a1

    .line 238
    :cond_141
    const-string v8, "dd-MM-yyyy"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b7

    .line 239
    iget-object v8, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b7
.end method


# virtual methods
.method public getSingleTTSMessage()Ljava/lang/String;
    .registers 9

    .prologue
    .line 289
    const-string v0, ""

    .line 291
    .local v0, "TTSMessage":Ljava/lang/String;
    const-string v1, ""

    .line 292
    .local v1, "dateFormat":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->getCurrentDateFormat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 293
    .local v4, "value":Ljava/lang/String;
    const-string v5, "yyyy-MM-dd"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    const-string v5, "MM-dd-yyyy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 294
    :cond_1a
    iget-object v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mContext:Landroid/content/Context;

    const v6, 0x10400fb

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 298
    :cond_23
    :goto_23
    iget-object v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v1, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 301
    .local v2, "dateText":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 302
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mIs24HTime:Z

    if-eqz v5, :cond_66

    .line 303
    const-string v5, "kk:mm"

    iget-object v6, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 308
    .local v3, "mTTSTime":Ljava/lang/String;
    :goto_42
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 310
    return-object v0

    .line 295
    .end local v2    # "dateText":Ljava/lang/CharSequence;
    .end local v3    # "mTTSTime":Ljava/lang/String;
    :cond_54
    const-string v5, "dd-MM-yyyy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 296
    iget-object v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mContext:Landroid/content/Context;

    const v6, 0x10400fc

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_23

    .line 305
    .restart local v2    # "dateText":Ljava/lang/CharSequence;
    :cond_66
    const-string v5, "h:mm"

    iget-object v6, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 306
    .restart local v3    # "mTTSTime":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_42
.end method

.method protected onAttachedToWindow()V
    .registers 6

    .prologue
    .line 146
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 147
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mIs24HTime:Z

    .line 148
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->onTimeChanged()V

    .line 150
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 152
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 161
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "time_12_24"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mTimeFormatChangeObserver:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock$TimeFormatChangeObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 164
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 168
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 169
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 170
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mTimeFormatChangeObserver:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock$TimeFormatChangeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 171
    return-void
.end method

.method protected onFinishInflate()V
    .registers 6

    .prologue
    .line 123
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 124
    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 125
    .local v2, "res":Landroid/content/res/Resources;
    const v3, 0x1110071

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mIsCover2:Z

    .line 126
    const/4 v1, 0x0

    .line 127
    .local v1, "clockTypeface":Landroid/graphics/Typeface;
    const/4 v0, 0x0

    .line 128
    .local v0, "ampmTypeface":Landroid/graphics/Typeface;
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mIsCover2:Z

    if-eqz v3, :cond_66

    .line 129
    const-string v3, "system/fonts/SamsungSans-Num45.ttf"

    invoke-static {v3}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 135
    :goto_1e
    const v3, 0x10202ab

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mClockView:Landroid/widget/LinearLayout;

    .line 136
    const v3, 0x1020449

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mClockRoot:Landroid/widget/LinearLayout;

    .line 137
    const v3, 0x10202ad

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mTime:Landroid/widget/TextView;

    .line 138
    const v3, 0x10202ac

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mAmPm:Landroid/widget/TextView;

    .line 139
    const v3, 0x10202ae

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mDayofWeek:Landroid/widget/TextView;

    .line 140
    const v3, 0x10202af

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mMonthandDay:Landroid/widget/TextView;

    .line 141
    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mTime:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 142
    return-void

    .line 131
    :cond_66
    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "fonts/SAMSUNG_CLOCK_NUMERALS.TTF"

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    goto :goto_1e
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 175
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 176
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->getSingleTTSMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 177
    return-void
.end method
