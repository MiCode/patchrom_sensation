.class Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "FrameworkCustomization.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/customization/FrameworkCustomization;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FrameworkXmlContentHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$ItemTagNode;,
        Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$TagNode;
    }
.end annotation


# instance fields
.field private category:Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$TagNode;

.field private function:Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$TagNode;

.field private item:Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$ItemTagNode;

.field private key:Ljava/lang/String;

.field private module:Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$TagNode;

.field private final nullTagNode:Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$TagNode;

.field private set:Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$TagNode;

.field final synthetic this$0:Lcom/htc/customization/FrameworkCustomization;

.field private value:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(Lcom/htc/customization/FrameworkCustomization;)V
    .locals 3
    .parameter

    .prologue
    .line 368
    iput-object p1, p0, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;->this$0:Lcom/htc/customization/FrameworkCustomization;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 369
    new-instance v0, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$TagNode;

    invoke-direct {v0, p0}, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$TagNode;-><init>(Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;)V

    iput-object v0, p0, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;->nullTagNode:Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$TagNode;

    .line 370
    iget-object v0, p0, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;->nullTagNode:Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$TagNode;

    const-string v1, "name"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$TagNode;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;->nullTagNode:Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$TagNode;

    iput-object v0, p0, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;->category:Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$TagNode;

    .line 373
    iget-object v0, p0, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;->nullTagNode:Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$TagNode;

    iput-object v0, p0, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;->module:Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$TagNode;

    .line 374
    iget-object v0, p0, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;->nullTagNode:Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$TagNode;

    iput-object v0, p0, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;->function:Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$TagNode;

    .line 375
    iget-object v0, p0, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;->nullTagNode:Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$TagNode;

    iput-object v0, p0, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;->set:Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$TagNode;

    .line 376
    return-void
.end method

.method private generateKey()V
    .locals 5

    .prologue
    .line 422
    const-string v0, "name"

    .line 424
    .local v0, attribute:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;->category:Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$TagNode;

    const-string v4, "name"

    invoke-virtual {v3, v4}, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$TagNode;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;->module:Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$TagNode;

    const-string v4, "name"

    invoke-virtual {v3, v4}, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$TagNode;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;->function:Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$TagNode;

    const-string v4, "name"

    invoke-virtual {v3, v4}, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$TagNode;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;->item:Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$ItemTagNode;

    const-string v4, "name"

    invoke-virtual {v3, v4}, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$ItemTagNode;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 426
    .local v1, result:Ljava/lang/String;
    :goto_0
    const-string v2, ".."

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 427
    const-string v2, ".."

    const-string v3, "."

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 430
    :cond_0
    :goto_1
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 431
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 434
    :cond_1
    iput-object v1, p0, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;->key:Ljava/lang/String;

    .line 435
    return-void
.end method

.method private putKeyValue()V
    .locals 4

    .prologue
    .line 438
    iget-object v2, p0, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;->item:Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$ItemTagNode;

    iget-object v3, p0, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;->value:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$ItemTagNode;->setValue(Ljava/lang/String;)V

    .line 440
    iget-object v2, p0, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;->item:Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$ItemTagNode;

    const-string v3, "type"

    invoke-virtual {v2, v3}, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$ItemTagNode;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "string"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 441
    iget-object v2, p0, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;->key:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;->item:Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$ItemTagNode;

    invoke-virtual {v3}, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$ItemTagNode;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/customization/FrameworkCustomization;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    :cond_0
    iget-object v2, p0, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;->item:Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$ItemTagNode;

    const-string v3, "type"

    invoke-virtual {v2, v3}, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$ItemTagNode;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "boolean"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 445
    iget-object v2, p0, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;->item:Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$ItemTagNode;

    invoke-virtual {v2}, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$ItemTagNode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 446
    .local v0, booleanValue:Ljava/lang/Boolean;
    iget-object v2, p0, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;->key:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/htc/customization/FrameworkCustomization;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 449
    .end local v0           #booleanValue:Ljava/lang/Boolean;
    :cond_1
    iget-object v2, p0, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;->item:Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$ItemTagNode;

    const-string v3, "type"

    invoke-virtual {v2, v3}, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$ItemTagNode;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "int"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 450
    iget-object v2, p0, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;->item:Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$ItemTagNode;

    invoke-virtual {v2}, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$ItemTagNode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 451
    .local v1, integerValue:Ljava/lang/Integer;
    iget-object v2, p0, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;->key:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/htc/customization/FrameworkCustomization;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 453
    .end local v1           #integerValue:Ljava/lang/Integer;
    :cond_2
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 2
    .parameter "chars"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 456
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 458
    .local v0, result:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 460
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 461
    iget-object v1, p0, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;->value:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 463
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "fullName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 414
    const-string v0, "item"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    invoke-direct {p0}, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;->generateKey()V

    .line 416
    invoke-direct {p0}, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;->putKeyValue()V

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;->value:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 419
    return-void
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 379
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;->value:Ljava/lang/StringBuffer;

    .line 380
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "fullName"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 385
    const-string v0, "category"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    new-instance v0, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$TagNode;

    invoke-direct {v0, p0}, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$TagNode;-><init>(Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;)V

    iput-object v0, p0, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;->category:Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$TagNode;

    .line 387
    iget-object v0, p0, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;->category:Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$TagNode;

    const-string v1, "name"

    const-string v2, "name"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$TagNode;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    :cond_0
    const-string v0, "module"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 391
    new-instance v0, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$TagNode;

    invoke-direct {v0, p0}, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$TagNode;-><init>(Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;)V

    iput-object v0, p0, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;->module:Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$TagNode;

    .line 392
    iget-object v0, p0, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;->module:Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$TagNode;

    const-string v1, "name"

    const-string v2, "name"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$TagNode;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    :cond_1
    const-string v0, "function"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 396
    new-instance v0, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$TagNode;

    invoke-direct {v0, p0}, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$TagNode;-><init>(Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;)V

    iput-object v0, p0, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;->function:Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$TagNode;

    .line 397
    iget-object v0, p0, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;->function:Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$TagNode;

    const-string v1, "name"

    const-string v2, "name"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$TagNode;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    :cond_2
    const-string v0, "set"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 401
    new-instance v0, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$TagNode;

    invoke-direct {v0, p0}, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$TagNode;-><init>(Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;)V

    iput-object v0, p0, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;->set:Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$TagNode;

    .line 402
    iget-object v0, p0, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;->set:Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$TagNode;

    const-string v1, "name"

    const-string v2, "name"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$TagNode;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    :cond_3
    const-string v0, "item"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 406
    new-instance v0, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$ItemTagNode;

    invoke-direct {v0, p0}, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$ItemTagNode;-><init>(Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;)V

    iput-object v0, p0, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;->item:Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$ItemTagNode;

    .line 407
    iget-object v0, p0, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;->item:Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$ItemTagNode;

    const-string v1, "name"

    const-string v2, "name"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$ItemTagNode;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;->item:Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$ItemTagNode;

    const-string v1, "type"

    const-string v2, "type"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$ItemTagNode;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    :cond_4
    return-void
.end method
