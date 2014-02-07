.class public Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;
.super Landroid/widget/FrameLayout;
.source "SViewCoverWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Weather"
.end annotation


# static fields
.field private static ACTION_SEC_AUTO_REFRESH:Ljava/lang/String; = null

.field private static ACTION_SEC_CHANGE_SETTING:Ljava/lang/String; = null

.field private static ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String; = null

.field private static final DAEMON_ACCUWEATHER:Ljava/lang/String; = "accuweather"

.field private static final DAEMON_KWEATHER:Ljava/lang/String; = "kweather"

.field private static mCPName:Ljava/lang/String;


# instance fields
.field private final KEY_CITY_ID:Ljava/lang/String;

.field private final KEY_CITY_NAME:Ljava/lang/String;

.field private final KEY_CURRENT_TEMP:Ljava/lang/String;

.field private final KEY_ICON_NUM:Ljava/lang/String;

.field private final KEY_TEMP_SCALE:Ljava/lang/String;

.field private final KEY_WEATHER_TEXT:Ljava/lang/String;

.field private final TEMP_SCALE_CENTIGRADE:I

.field private final TEMP_SCALE_FAHRENHEIT:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mWeatherCity:Landroid/widget/TextView;

.field private mWeatherContainer:Landroid/widget/LinearLayout;

.field private mWeatherIcon:Landroid/widget/ImageView;

.field private mWeatherStatus:Landroid/widget/TextView;

.field private mWeatherTemp:Landroid/widget/TextView;

.field private mWeatherUnit:Landroid/widget/TextView;

.field private mWeatherWidget:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 826
    const-string v0, "accuweather"

    sput-object v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->mCPName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 833
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 800
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->TEMP_SCALE_FAHRENHEIT:I

    .line 802
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->TEMP_SCALE_CENTIGRADE:I

    .line 805
    const-string v0, "aw_daemon_service_key_loc_code"

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->KEY_CITY_ID:Ljava/lang/String;

    .line 807
    const-string v0, "aw_daemon_service_key_city_name"

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->KEY_CITY_NAME:Ljava/lang/String;

    .line 809
    const-string v0, "aw_daemon_service_key_current_temp"

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->KEY_CURRENT_TEMP:Ljava/lang/String;

    .line 811
    const-string v0, "aw_daemon_service_key_temp_scale"

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->KEY_TEMP_SCALE:Ljava/lang/String;

    .line 813
    const-string v0, "aw_daemon_service_key_icon_num"

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->KEY_ICON_NUM:Ljava/lang/String;

    .line 815
    const-string v0, "aw_daemon_service_key_weather_text"

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->KEY_WEATHER_TEXT:Ljava/lang/String;

    .line 834
    iput-object p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    .line 836
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->initWeatherDaemonInfo()V

    .line 838
    new-instance v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather$1;-><init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 864
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->mIntentFilter:Landroid/content/IntentFilter;

    .line 865
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->mIntentFilter:Landroid/content/IntentFilter;

    sget-object v1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 866
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->mIntentFilter:Landroid/content/IntentFilter;

    sget-object v1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 867
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->mIntentFilter:Landroid/content/IntentFilter;

    sget-object v1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 869
    const-string v0, "kweather"

    sget-object v1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 870
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 871
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 872
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 873
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 874
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 876
    :cond_76
    return-void
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 780
    sget-object v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 780
    sget-object v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 780
    sget-object v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->mCPName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .registers 1

    .prologue
    .line 780
    sget-object v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    return-object v0
.end method

.method private checkDayOrNight()Z
    .registers 12

    .prologue
    const/16 v10, 0x12

    const/4 v9, 0x6

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1109
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1110
    .local v0, "calendar":Ljava/util/Calendar;
    if-eqz v0, :cond_91

    .line 1111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1113
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v3, v6, 0x1

    .line 1114
    .local v3, "month":I
    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1115
    .local v1, "hour":I
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->access$100()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkDayOrNight, month = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", hour = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1118
    .local v2, "locale":Ljava/lang/String;
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->access$100()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkDayOrNight, locale = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    if-eqz v2, :cond_8b

    .line 1121
    const-string v6, "ko_KR"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_85

    .line 1122
    const/4 v6, 0x3

    if-lt v3, v6, :cond_7e

    const/16 v6, 0xa

    if-ge v3, v6, :cond_7e

    .line 1123
    if-lt v1, v9, :cond_7c

    const/16 v6, 0x13

    if-lt v1, v6, :cond_7d

    :cond_7c
    move v4, v5

    .line 1147
    .end local v1    # "hour":I
    .end local v2    # "locale":Ljava/lang/String;
    .end local v3    # "month":I
    :cond_7d
    :goto_7d
    return v4

    .line 1128
    .restart local v1    # "hour":I
    .restart local v2    # "locale":Ljava/lang/String;
    .restart local v3    # "month":I
    :cond_7e
    const/4 v6, 0x7

    if-lt v1, v6, :cond_83

    if-lt v1, v10, :cond_7d

    :cond_83
    move v4, v5

    .line 1129
    goto :goto_7d

    .line 1134
    :cond_85
    if-lt v1, v9, :cond_89

    if-lt v1, v10, :cond_7d

    :cond_89
    move v4, v5

    .line 1135
    goto :goto_7d

    .line 1140
    :cond_8b
    if-lt v1, v9, :cond_8f

    if-lt v1, v10, :cond_7d

    :cond_8f
    move v4, v5

    .line 1141
    goto :goto_7d

    .line 1146
    .end local v1    # "hour":I
    .end local v2    # "locale":Ljava/lang/String;
    .end local v3    # "month":I
    :cond_91
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v6, "checkDayOrNight, mCalendar is null, return true"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7d
.end method

.method private getCPName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1086
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_LiveWallpaper_WeatherWallCPName"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initWeatherDaemonInfo()V
    .registers 4

    .prologue
    .line 1091
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->getCPName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->mCPName:Ljava/lang/String;

    .line 1092
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initWeatherDaemonInfo, getCPName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->mCPName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    sget-object v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->mCPName:Ljava/lang/String;

    if-eqz v0, :cond_30

    const-string v0, ""

    sget-object v1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1094
    :cond_30
    const-string v0, "accuweather"

    sput-object v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->mCPName:Ljava/lang/String;

    .line 1096
    :cond_34
    const-string v0, "kweather"

    sget-object v1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 1097
    const-string v0, "com.sec.android.widgetapp.ap.kweatherdaemon.action.CHANGE_SETTING"

    sput-object v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    .line 1098
    const-string v0, "com.sec.android.widgetapp.ap.kweatherdaemon.action.AUTO_REFRESH"

    sput-object v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    .line 1099
    const-string v0, "com.sec.android.widgetapp.ap.kweatherdaemon.action.CHANGE_WEATHER_DATA"

    sput-object v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    .line 1105
    :goto_4a
    return-void

    .line 1101
    :cond_4b
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CHANE_SETTING"

    sput-object v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    .line 1102
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.AUTO_REFRESH"

    sput-object v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    .line 1103
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CHANGE_WEATHER_DATA"

    sput-object v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    goto :goto_4a
.end method


# virtual methods
.method getImageIcon(I)I
    .registers 9
    .param p1, "iconNum"    # I

    .prologue
    const v4, 0x1081057

    const v3, 0x1081056

    const v2, 0x1081055

    const v1, 0x1081054

    const v0, 0x1081053

    .line 929
    const-string v5, "kweather"

    sget-object v6, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->mCPName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 930
    packed-switch p1, :pswitch_data_96

    .line 1055
    :cond_1c
    :goto_1c
    :pswitch_1c
    return v0

    .line 932
    :pswitch_1d
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->checkDayOrNight()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 935
    const v0, 0x1081064

    goto :goto_1c

    .line 940
    :pswitch_27
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->checkDayOrNight()Z

    move-result v0

    if-eqz v0, :cond_2f

    move v0, v1

    .line 941
    goto :goto_1c

    .line 943
    :cond_2f
    const v0, 0x1081065

    goto :goto_1c

    :pswitch_33
    move v0, v2

    .line 947
    goto :goto_1c

    :pswitch_35
    move v0, v3

    .line 949
    goto :goto_1c

    :pswitch_37
    move v0, v4

    .line 953
    goto :goto_1c

    .line 957
    :pswitch_39
    const v0, 0x1081058

    goto :goto_1c

    .line 959
    :pswitch_3d
    const v0, 0x1081059

    goto :goto_1c

    .line 965
    :pswitch_41
    const v0, 0x108105b

    goto :goto_1c

    .line 969
    :pswitch_45
    const v0, 0x108105d

    goto :goto_1c

    .line 975
    :pswitch_49
    const v0, 0x108105e

    goto :goto_1c

    .line 989
    :pswitch_4d
    const v0, 0x108105f

    goto :goto_1c

    .line 994
    :cond_51
    packed-switch p1, :pswitch_data_ea

    :pswitch_54
    goto :goto_1c

    :pswitch_55
    move v0, v1

    .line 1001
    goto :goto_1c

    :pswitch_57
    move v0, v2

    .line 1006
    goto :goto_1c

    :pswitch_59
    move v0, v3

    .line 1008
    goto :goto_1c

    :pswitch_5b
    move v0, v4

    .line 1013
    goto :goto_1c

    .line 1015
    :pswitch_5d
    const v0, 0x1081058

    goto :goto_1c

    .line 1019
    :pswitch_61
    const v0, 0x1081059

    goto :goto_1c

    .line 1022
    :pswitch_65
    const v0, 0x108105a

    goto :goto_1c

    .line 1024
    :pswitch_69
    const v0, 0x108105b

    goto :goto_1c

    .line 1027
    :pswitch_6d
    const v0, 0x108105c

    goto :goto_1c

    .line 1030
    :pswitch_71
    const v0, 0x108105d

    goto :goto_1c

    .line 1034
    :pswitch_75
    const v0, 0x108105e

    goto :goto_1c

    .line 1036
    :pswitch_79
    const v0, 0x108105f

    goto :goto_1c

    .line 1040
    :pswitch_7d
    const v0, 0x1081060

    goto :goto_1c

    .line 1042
    :pswitch_81
    const v0, 0x1081061

    goto :goto_1c

    .line 1044
    :pswitch_85
    const v0, 0x1081062

    goto :goto_1c

    .line 1046
    :pswitch_89
    const v0, 0x1081063

    goto :goto_1c

    .line 1048
    :pswitch_8d
    const v0, 0x1081064

    goto :goto_1c

    .line 1053
    :pswitch_91
    const v0, 0x1081065

    goto :goto_1c

    .line 930
    nop

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_27
        :pswitch_33
        :pswitch_33
        :pswitch_27
        :pswitch_27
        :pswitch_37
        :pswitch_37
        :pswitch_37
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_3d
        :pswitch_35
    .end packed-switch

    .line 994
    :pswitch_data_ea
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1c
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_57
        :pswitch_57
        :pswitch_57
        :pswitch_54
        :pswitch_54
        :pswitch_59
        :pswitch_5b
        :pswitch_5b
        :pswitch_5d
        :pswitch_61
        :pswitch_65
        :pswitch_65
        :pswitch_69
        :pswitch_6d
        :pswitch_71
        :pswitch_71
        :pswitch_75
        :pswitch_75
        :pswitch_7d
        :pswitch_7d
        :pswitch_7d
        :pswitch_54
        :pswitch_54
        :pswitch_79
        :pswitch_81
        :pswitch_85
        :pswitch_89
        :pswitch_8d
        :pswitch_91
        :pswitch_91
        :pswitch_91
        :pswitch_91
        :pswitch_57
        :pswitch_5b
        :pswitch_5b
        :pswitch_61
        :pswitch_61
        :pswitch_6d
        :pswitch_75
    .end packed-switch
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .prologue
    .line 1074
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1075
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1076
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->updateWeatherInfo()V

    .line 1077
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 1081
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1082
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1083
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 1062
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 1063
    const v0, 0x10202b5

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->mWeatherWidget:Landroid/view/View;

    .line 1064
    const v0, 0x10202c5

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->mWeatherIcon:Landroid/widget/ImageView;

    .line 1067
    const v0, 0x10202c4

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->mWeatherContainer:Landroid/widget/LinearLayout;

    .line 1068
    const v0, 0x10202a9

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->mWeatherTemp:Landroid/widget/TextView;

    .line 1069
    const v0, 0x10202aa

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->mWeatherUnit:Landroid/widget/TextView;

    .line 1070
    return-void
.end method

.method updateWeatherInfo()V
    .registers 16

    .prologue
    const/4 v14, 0x4

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 879
    iget-object v11, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "weather_cover"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_34

    move v6, v9

    .line 880
    .local v6, "mIsWeather":Z
    :goto_12
    if-nez v6, :cond_36

    .line 881
    iget-object v9, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->mWeatherWidget:Landroid/view/View;

    invoke-virtual {v9, v14}, Landroid/view/View;->setVisibility(I)V

    .line 882
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->access$100()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mIsWeather="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    :cond_33
    :goto_33
    return-void

    .end local v6    # "mIsWeather":Z
    :cond_34
    move v6, v10

    .line 879
    goto :goto_12

    .line 885
    .restart local v6    # "mIsWeather":Z
    :cond_36
    iget-object v11, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "aw_daemon_service_key_loc_code"

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 886
    .local v0, "cityId":Ljava/lang/String;
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->access$100()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "cityId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    if-eqz v0, :cond_174

    .line 888
    iget-object v11, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->mWeatherWidget:Landroid/view/View;

    invoke-virtual {v11, v10}, Landroid/view/View;->setVisibility(I)V

    .line 890
    iget-object v11, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "aw_daemon_service_key_icon_num"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 891
    .local v5, "iconNum":I
    iget-object v10, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->mWeatherIcon:Landroid/widget/ImageView;

    if-eqz v10, :cond_7c

    .line 892
    iget-object v10, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->mWeatherIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->getImageIcon(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 894
    :cond_7c
    iget-object v10, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "aw_daemon_service_key_city_name"

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 896
    .local v1, "currentCityName":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->mWeatherCity:Landroid/widget/TextView;

    if-eqz v10, :cond_91

    .line 897
    iget-object v10, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->mWeatherCity:Landroid/widget/TextView;

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 899
    :cond_91
    iget-object v10, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "aw_daemon_service_key_weather_text"

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 900
    .local v4, "currentWeatherText":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->mWeatherStatus:Landroid/widget/TextView;

    if-eqz v10, :cond_a6

    .line 901
    iget-object v10, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->mWeatherStatus:Landroid/widget/TextView;

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 903
    :cond_a6
    iget-object v10, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "aw_daemon_service_key_current_temp"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v10

    float-to-int v2, v10

    .line 904
    .local v2, "currentTemp":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x104099b

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 905
    .local v3, "currentTempString":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->mWeatherTemp:Landroid/widget/TextView;

    if-eqz v10, :cond_33

    .line 906
    iget-object v10, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->mWeatherTemp:Landroid/widget/TextView;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 908
    iget-object v10, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "aw_daemon_service_key_temp_scale"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 909
    .local v7, "tempScale":I
    const-string v8, ""

    .line 910
    .local v8, "unit":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->mWeatherUnit:Landroid/widget/TextView;

    if-eqz v9, :cond_10b

    .line 911
    if-nez v7, :cond_15f

    .line 912
    iget-object v9, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->mWeatherUnit:Landroid/widget/TextView;

    const-string v10, "F"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 913
    iget-object v9, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x104099a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 919
    :cond_10b
    :goto_10b
    iget-object v9, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->mWeatherContainer:Landroid/widget/LinearLayout;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 920
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->access$100()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cityId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " currentTemp="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " tempScale="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " iconNum="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_33

    .line 915
    :cond_15f
    iget-object v9, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->mWeatherUnit:Landroid/widget/TextView;

    const-string v10, "C"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 916
    iget-object v9, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1040999

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_10b

    .line 923
    .end local v1    # "currentCityName":Ljava/lang/String;
    .end local v2    # "currentTemp":I
    .end local v3    # "currentTempString":Ljava/lang/String;
    .end local v4    # "currentWeatherText":Ljava/lang/String;
    .end local v5    # "iconNum":I
    .end local v7    # "tempScale":I
    .end local v8    # "unit":Ljava/lang/String;
    :cond_174
    iget-object v9, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Weather;->mWeatherWidget:Landroid/view/View;

    invoke-virtual {v9, v14}, Landroid/view/View;->setVisibility(I)V

    .line 924
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->access$100()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cityId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_33
.end method
