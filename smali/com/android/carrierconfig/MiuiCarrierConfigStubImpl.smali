.class public Lcom/android/carrierconfig/MiuiCarrierConfigStubImpl;
.super Ljava/lang/Object;
.source "MiuiCarrierConfigStubImpl.java"

# interfaces
.implements Lcom/android/carrierconfig/IMiuiCarrierConfig;


# static fields
.field public static final synthetic $r8$clinit:I

.field private static final mCoatCarrierToCustRegionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultPb:Landroid/os/PersistableBundle;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/carrierconfig/MiuiCarrierConfigStubImpl;->mCoatCarrierToCustRegionMap:Ljava/util/Map;

    const-string v1, "OR"

    const-string v2, "fr_orange"

    .line 48
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "VF"

    const-string v2, "es_vodafone"

    .line 49
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SF"

    const-string v2, "fr_sfr"

    .line 50
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isCotaOpconfigUsed()Z
    .locals 4

    :try_start_0
    const-string p0, "miui.telephony.TelephonyManager"

    .line 387
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "getDefault"

    const/4 v1, 0x0

    .line 388
    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x1

    .line 389
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 390
    invoke-virtual {v0, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "isCotaOpconfigUsed"

    .line 391
    invoke-virtual {p0, v3, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 392
    invoke-virtual {p0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 393
    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 395
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    .line 397
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCotaOpconfigUsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiCarrierConfigStubImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private isFiveGCapable()Z
    .locals 4

    :try_start_0
    const-string p0, "miui.telephony.TelephonyManager"

    .line 371
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "getDefault"

    const/4 v1, 0x0

    .line 372
    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x1

    .line 373
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 374
    invoke-virtual {v0, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "isFiveGCapable"

    .line 375
    invoke-virtual {p0, v3, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 376
    invoke-virtual {p0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 377
    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 379
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isOpconfigFileExist(Ljava/lang/String;)Z
    .locals 0

    .line 402
    invoke-direct {p0}, Lcom/android/carrierconfig/MiuiCarrierConfigStubImpl;->isCotaOpconfigUsed()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 406
    :cond_0
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 407
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method private loadCarrierConfigFromXml(Ljava/lang/String;Landroid/os/PersistableBundle;Landroid/service/carrier/CarrierIdentifier;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "MiuiCarrierConfigStubImpl"

    const/4 v1, 0x0

    .line 163
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    new-instance p1, Ljava/io/FileReader;

    invoke-direct {p1, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 165
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 166
    invoke-interface {v2, p1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 168
    invoke-static {v2, p3, p4}, Lcom/android/carrierconfig/DefaultCarrierConfigService;->readConfigFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/service/carrier/CarrierIdentifier;Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object p3

    .line 170
    iget-object p4, p0, Lcom/android/carrierconfig/MiuiCarrierConfigStubImpl;->mDefaultPb:Landroid/os/PersistableBundle;

    if-eqz p4, :cond_0

    .line 171
    invoke-virtual {p2, p4}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V

    .line 172
    iput-object v1, p0, Lcom/android/carrierconfig/MiuiCarrierConfigStubImpl;->mDefaultPb:Landroid/os/PersistableBundle;

    .line 174
    :cond_0
    invoke-virtual {p2, p3}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x1

    .line 186
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    goto/16 :goto_5

    :catchall_0
    move-exception p0

    move-object v1, p1

    goto :goto_6

    :catch_0
    move-exception p0

    move-object v1, p1

    goto :goto_0

    :catch_1
    move-exception p0

    move-object v1, p1

    goto :goto_2

    :catch_2
    move-exception p0

    move-object v1, p1

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_6

    :catch_3
    move-exception p0

    .line 182
    :goto_0
    :try_start_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_1

    .line 186
    :goto_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_4

    :catch_4
    move-exception p0

    .line 180
    :goto_2
    :try_start_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Load carrier config exception="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    goto :goto_1

    :catch_5
    move-exception p0

    .line 178
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Path is not found exception="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_1

    goto :goto_1

    :catch_6
    :cond_1
    :goto_4
    const/4 p0, 0x0

    :catch_7
    :goto_5
    return p0

    :goto_6
    if-eqz v1, :cond_2

    .line 186
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    .line 191
    :catch_8
    :cond_2
    throw p0
.end method

.method private loadMiuiDefaultImsConfig(Ljava/lang/String;Landroid/service/carrier/CarrierIdentifier;Ljava/lang/String;)Landroid/os/PersistableBundle;
    .locals 3

    const-string v0, "MiuiCarrierConfigStubImpl"

    const-string v1, "loadMiuiDefaultImsConfig"

    .line 333
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    const/4 v2, 0x1

    .line 337
    invoke-virtual {v1, v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 338
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 339
    iget-object p0, p0, Lcom/android/carrierconfig/MiuiCarrierConfigStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    const-string p1, "UTF-8"

    .line 340
    invoke-interface {v1, p0, p1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 341
    invoke-static {v1, p2, p3}, Lcom/android/carrierconfig/DefaultCarrierConfigService;->readConfigFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/service/carrier/CarrierIdentifier;Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 343
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Load  defaultIMSConfig exception="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public checkMiuiFilters(ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 197
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "nr_support_mode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "cust_region"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "sdk"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    move v3, v1

    goto :goto_0

    :sswitch_3
    const-string v0, "build_region"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    const-string p2, " value:"

    const-string v0, " newResult:"

    const-string v4, "MiuiCarrierConfigStubImpl"

    const-string v5, ""

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_4

    .line 219
    :pswitch_0
    invoke-direct {p0}, Lcom/android/carrierconfig/MiuiCarrierConfigStubImpl;->isFiveGCapable()Z

    move-result p0

    if-eqz p0, :cond_5

    if-eqz p1, :cond_4

    .line 222
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    move v2, v1

    .line 224
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkMiuiFilters isFiveGSupported: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :pswitch_1
    const-string p0, "ro.miui.customized.region"

    .line 207
    invoke-static {p0, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "persist.sys.cota.carrier"

    .line 208
    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 209
    sget-object v6, Lcom/android/carrierconfig/MiuiCarrierConfigStubImpl;->mCoatCarrierToCustRegionMap:Ljava/util/Map;

    if-eqz v6, :cond_6

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    :cond_6
    if-eqz p1, :cond_7

    .line 210
    invoke-virtual {p3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    move v1, v2

    .line 211
    :cond_8
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkMiuiFilters custRegion : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " , cotaCarrier : "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " , cotaCarrierMapVal : "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :pswitch_2
    if-eqz p1, :cond_9

    .line 200
    :try_start_0
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt p0, p1, :cond_9

    goto :goto_3

    .line 202
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "sdk is not an integer value: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_9
    move v1, v2

    :goto_3
    move v2, v1

    goto :goto_4

    :pswitch_3
    const-string p0, "ro.miui.build.region"

    .line 215
    invoke-static {p0, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_9

    .line 216
    invoke-virtual {p3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_3

    :goto_4
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x44cd1a1b -> :sswitch_3
        0x1bc3a -> :sswitch_2
        0x50802a60 -> :sswitch_1
        0x5798d6ae -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public checkMiuiFilters(ZLjava/lang/String;Ljava/lang/String;Landroid/service/carrier/CarrierIdentifier;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "include"

    .line 351
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 352
    invoke-direct {p0, p3, p4, p5}, Lcom/android/carrierconfig/MiuiCarrierConfigStubImpl;->loadMiuiDefaultImsConfig(Ljava/lang/String;Landroid/service/carrier/CarrierIdentifier;Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 354
    iget-object p2, p0, Lcom/android/carrierconfig/MiuiCarrierConfigStubImpl;->mDefaultPb:Landroid/os/PersistableBundle;

    if-eqz p2, :cond_0

    .line 355
    invoke-virtual {p2, p1}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V

    goto :goto_0

    .line 357
    :cond_0
    iput-object p1, p0, Lcom/android/carrierconfig/MiuiCarrierConfigStubImpl;->mDefaultPb:Landroid/os/PersistableBundle;

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    .line 362
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/carrierconfig/MiuiCarrierConfigStubImpl;->checkMiuiFilters(ZLjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    :goto_1
    return p0
.end method

.method public isAttributeContainsValue(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2

    .line 55
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 p3, 0x0

    if-nez p0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    const-string p0, ","

    .line 59
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 60
    array-length p1, p0

    if-nez p1, :cond_1

    goto :goto_1

    .line 64
    :cond_1
    array-length p1, p0

    move v0, p3

    :goto_0
    if-ge v0, p1, :cond_3

    aget-object v1, p0, v0

    if-eqz v1, :cond_2

    .line 65
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return p3
.end method

.method public loadApexMiuiCarrierConfig(Landroid/content/Context;Landroid/os/PersistableBundle;Landroid/service/carrier/CarrierIdentifier;Ljava/lang/String;)V
    .locals 1

    const-string p1, "/apex/com.miui.opconfig/etc/carrierconfig/vendor_miui.xml"

    .line 131
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/carrierconfig/MiuiCarrierConfigStubImpl;->loadCarrierConfigFromXml(Ljava/lang/String;Landroid/os/PersistableBundle;Landroid/service/carrier/CarrierIdentifier;Ljava/lang/String;)Z

    move-result p1

    const-string v0, "MiuiCarrierConfigStubImpl"

    if-nez p1, :cond_0

    const-string p0, "Load vendor_miui failed"

    .line 132
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p1, "/apex/com.miui.opconfig/etc/carrierconfig/vendor_device.xml"

    .line 136
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/carrierconfig/MiuiCarrierConfigStubImpl;->loadCarrierConfigFromXml(Ljava/lang/String;Landroid/os/PersistableBundle;Landroid/service/carrier/CarrierIdentifier;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "Load vendor_device failed"

    .line 137
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public loadMiuiCarrierConfig(Landroid/content/Context;Landroid/os/PersistableBundle;Landroid/service/carrier/CarrierIdentifier;Ljava/lang/String;)V
    .locals 4

    .line 80
    iput-object p1, p0, Lcom/android/carrierconfig/MiuiCarrierConfigStubImpl;->mContext:Landroid/content/Context;

    .line 82
    invoke-virtual {p0}, Lcom/android/carrierconfig/MiuiCarrierConfigStubImpl;->supportApexCarrierConfig()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/carrierconfig/MiuiCarrierConfigStubImpl;->loadApexMiuiCarrierConfig(Landroid/content/Context;Landroid/os/PersistableBundle;Landroid/service/carrier/CarrierIdentifier;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "/opconfig/common/carrierconfig/vendor_miui.xml"

    .line 88
    invoke-direct {p0, v0}, Lcom/android/carrierconfig/MiuiCarrierConfigStubImpl;->isOpconfigFileExist(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "MiuiCarrierConfigStubImpl"

    if-eqz v1, :cond_1

    .line 89
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/carrierconfig/MiuiCarrierConfigStubImpl;->loadCarrierConfigFromXml(Ljava/lang/String;Landroid/os/PersistableBundle;Landroid/service/carrier/CarrierIdentifier;Ljava/lang/String;)Z

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 93
    :try_start_0
    invoke-static {v0, p3, p4}, Lcom/android/carrierconfig/DefaultCarrierConfigService;->readConfigFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/service/carrier/CarrierIdentifier;Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 94
    invoke-virtual {p2, v0}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load vendor_miui exception="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v0, "/opconfig/common/carrierconfig/vendor_device.xml"

    .line 101
    invoke-direct {p0, v0}, Lcom/android/carrierconfig/MiuiCarrierConfigStubImpl;->isOpconfigFileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 102
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/carrierconfig/MiuiCarrierConfigStubImpl;->loadCarrierConfigFromXml(Ljava/lang/String;Landroid/os/PersistableBundle;Landroid/service/carrier/CarrierIdentifier;Ljava/lang/String;)Z

    goto :goto_1

    .line 104
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f020001

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    .line 106
    :try_start_1
    invoke-static {p1, p3, p4}, Lcom/android/carrierconfig/DefaultCarrierConfigService;->readConfigFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/service/carrier/CarrierIdentifier;Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object p1

    .line 107
    iget-object p3, p0, Lcom/android/carrierconfig/MiuiCarrierConfigStubImpl;->mDefaultPb:Landroid/os/PersistableBundle;

    if-eqz p3, :cond_3

    .line 108
    invoke-virtual {p2, p3}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V

    const/4 p3, 0x0

    .line 109
    iput-object p3, p0, Lcom/android/carrierconfig/MiuiCarrierConfigStubImpl;->mDefaultPb:Landroid/os/PersistableBundle;

    .line 111
    :cond_3
    invoke-virtual {p2, p1}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 113
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Load vendor_device exception="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public supportApexCarrierConfig()Z
    .locals 1

    const-string p0, "ro.miui.carrier.apex"

    const/4 v0, 0x0

    .line 119
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
