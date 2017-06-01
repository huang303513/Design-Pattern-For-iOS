## 23种设计模式iOS实现

### 策略模式（Strategy）

它定义了算法家族，分别封装起来，让它们之间可以互相替换，此模式让算法的变化，不会影响到使用算法的客户。通过一个Context指定一个Strategy，通过Strategy的子类实现不同的算法。</br>
![img](https://github.com/huang303513/Design-Pattern-For-iOS/blob/master/%E8%AE%BE%E8%AE%A1%E5%9B%BE/%E7%AD%96%E7%95%A5%E6%A8%A1%E5%BC%8F.png)</br>

````objc
//策略模式配合简单工厂模式，同样的最初价格，返回不同的最终价格。不同的type就是不同的策略。
HCDCashContext *context = [[HCDCashContext alloc]initWithCashType:CashTypeNormal];
NSLog(@"结果是%f",[context getResult:100]);
HCDCashContext *contextReturn = [[HCDCashContext alloc]initWithCashType:CashTypeReturn];
NSLog(@"结果是%f",[contextReturn getResult:100]);
HCDCashContext *contextRobate = [[HCDCashContext alloc]initWithCashType:CashTypeRobate];
NSLog(@"结果是%f",[contextRobate getResult:100]);
````

### 装饰模式（Decorator）

动态的给一个对象添加一些额外的职责，就增加功能来说，装饰模式比生成子类更加灵活。decorate应该像礼物一样层层封装，每一层都添加新的功能。</br>
![img](https://github.com/huang303513/Design-Pattern-For-iOS/blob/master/%E8%AE%BE%E8%AE%A1%E5%9B%BE/%E8%A3%85%E9%A5%B0%E6%A8%A1%E5%BC%8F.jpg)</br>

````objc
//原始对象
ConcreteComponent *component = [[ConcreteComponent alloc]init];
//装饰对象
ConcreteDecoratorA *decoratorA = [[ConcreteDecoratorA alloc]init];
ConcreteDecoratorB *decoratorB = [[ConcreteDecoratorB alloc]init];
//装饰对象指定原始对象，后面就是用装饰对象。这样既有原始对象的功能，也有装饰对象的功能。
decoratorA.component = component;
decoratorB.component = component;
[decoratorA operation];
[decoratorB operation];

比如iOS的扩展和分类就是装饰模式。

比如SDWebImage的UIView、UIImageView、UIButton的各种分类，他们都把component的部分在UIView分类中，decorator部分放在UIButton、UIImageView中。
````

### 代理模式（Proxy）

为其他对象提供一种代理以控制对这个对象的访问。</br>
![img](https://github.com/huang303513/Design-Pattern-For-iOS/blob/master/%E8%AE%BE%E8%AE%A1%E5%9B%BE/%E4%BB%A3%E7%90%86%E6%A8%A1%E5%BC%8F.png)</br>

````objc
UITableView的delegate和dataSource熟悉，都是通过代理对象来控制对UITableView的访问。
````

### 工厂方法模式（Factory Method）

定义一个用于创建对象的接口，让子类决定实例化哪一个类。工厂方法使一个类的实例化延迟到其子类。相对于简单工厂方法，工厂方法模式把工厂也抽象出来，进行接口、实现分离。这样具体工厂和具体产品可以对应着同时扩充，而不需要修改现有逻辑。当然，使用者也许在不同场景要在一定程度上自己对应的工厂选择。</br>
![img](https://github.com/huang303513/Design-Pattern-For-iOS/blob/master/%E8%AE%BE%E8%AE%A1%E5%9B%BE/%E5%B7%A5%E5%8E%82%E6%96%B9%E6%B3%95%E6%A8%A1%E5%BC%8F.png)</br>

````objc
//不同的操作类有不同的工厂类，扩展新的操作不影响现有操作。HCDfactoryAdd工厂类初始化HCDCalculateAdd类。其他减、乘、除一样。
HCDfactory *factory = [[HCDfactoryAdd alloc]init];
HCDfactory  *calculate = [factory createFactory];
calculate.numberA = 10;
calculate.numberB = 15;
NSLog(@"结果是%f",[calculate calculate]);

又比如NSNumber调用的具体工厂NSCFBoolean和NSCFNumber也是具体的工厂类。
````

### 原型模式（Prototype）

用原型实例指定创建对象的种类，并且通过拷贝这些原型创建新的对象。</br>
![img](https://github.com/huang303513/Design-Pattern-For-iOS/blob/master/%E8%AE%BE%E8%AE%A1%E5%9B%BE/%E5%8E%9F%E5%9E%8B%E6%A8%A1%E5%BC%8F.png)</br>

````objc
//NSObject类对象作为原型
NSObject *obj = [NSObject new]
//obj对象作为原型
NSObject *objCopy = [obj copy]
NSObject *objCopy1 = [obj copy]

原型模式是非常简单的一种设计模式, 在多数情况下可被理解为一种深复制的行为。在Objective-C中使用原型模式, 首先要遵循NSCoping协议(OC中一些内置类遵循该协议, 例如NSArray, NSMutableArray等)。还有KVO的实现原理也是原型模式
````

### 模板方法模式（Template Method）

定义一个操作中的算法的骨架，而将一些步骤延迟到子类中。模板方法使得子类可以不改变一个算法的结构即可重定义该算法的某些特定步骤。</br>
![img](https://github.com/huang303513/Design-Pattern-For-iOS/blob/master/%E8%AE%BE%E8%AE%A1%E5%9B%BE/%E6%A8%A1%E6%9D%BF%E6%96%B9%E6%B3%95%E6%A8%A1%E5%BC%8F.png)</br>

````objc
//HCDtextpaper定义了两个问答题的不变部分(题目)，子类定义了变化部分(答案)。
HCDtextPaper *paperA = [[HCDtextPaperA alloc]init];
[paperA testQuestion1];
[paperA testQuestion2];
HCDtextPaper *paperB = [[HCDtextPaperB alloc]init];
[paperB testQuestion1];
[paperB testQuestion2];

当我们要完成在某个细节层次一致的一个过程或者一系列步骤，但是其个别步骤的更详细的层次上实现可能不同时，我们通常考虑用模板方法模式来处理。
````

### 外观模式（Facade）

为子系统中的一组接口提供一个一致的界面，此模式定义了一个高层接口，这个接口使得这一子系统更加容易使用。</br>
![img](https://github.com/huang303513/Design-Pattern-For-iOS/blob/master/%E8%AE%BE%E8%AE%A1%E5%9B%BE/%E5%A4%96%E8%A7%82%E6%A8%A1%E5%BC%8F.png)</br>

````objc
基金经理帮我们管理不同的股票。基金经理作为外观，我们只需要让基金经理买或者卖就好，基金经理再帮我们处理不同股票的卖或者买。

项目中有不同的网络请求，对于每一种类型的网络请求都封装到一个固定的文件里处理,比如公用参数添加，返回数据的处理。然后再通过一个外观文件引入，直接就可以使用了。从使用来说，所有网络请求的差异都被外观文件处理了。

还有比如AFN对于NSURLSession的不同系统版本的处理。
````

### 建造者模式（Builder）

将一个复杂对象的构建与它的表示分离，使得同样的构建过程可以创建不同的表示。它可以将复杂对象的建造过程抽象出来（抽象类别），使这个抽象过程的不同实现方法可以构造出不同表现（属性）的对象。</br>
![img](https://github.com/huang303513/Design-Pattern-For-iOS/blob/master/%E8%AE%BE%E8%AE%A1%E5%9B%BE/%E5%BB%BA%E9%80%A0%E8%80%85%E6%A8%A1%E5%BC%8F.png)</br>

````objc
HCDPersonBuilderDirector *director = [[HCDPersonBuilderDirector alloc]init];
HCDPresionBuilder builder = [[HCDPersonFatBuilder alloc]init];
//为director指定builder
director.builder = builder;
//director发出构建的指令，builder负责具体的建造过程
[director buildPerson];

SDWebImage的SDWebImageDownloader和SDWebImageDownloaderOperation就是director和builder之间的关系。前者不负责具体的下载操作，只负责管理builder，builder负责图片的具体下载。
````

### 观察者模式（Observer）

定义了一种一对多的依赖关系，让多个观察者对象同时监听某一个主题对象。这个主题对象在状态发生变化时，会通知所有观察者对象，使它们能够自动更新自己。</br>
![img](https://github.com/huang303513/Design-Pattern-For-iOS/blob/master/%E8%AE%BE%E8%AE%A1%E5%9B%BE/%E8%A7%82%E5%AF%9F%E8%80%85%E6%A8%A1%E5%BC%8F.png)</br>

````objc
iOS中的KVO、NSNotication都是观察者模式。
````

### 抽象工厂模式（Abstract Factory）

提供一个创建一系列相关或相互依赖对象的接口，而无需指定它们具体的类。</br>
![img](https://github.com/huang303513/Design-Pattern-For-iOS/blob/master/%E8%AE%BE%E8%AE%A1%E5%9B%BE/%E6%8A%BD%E8%B1%A1%E5%B7%A5%E5%8E%82%E6%A8%A1%E5%BC%8F.png)</br>

````objc
//根据不同的工厂方法，获取不同的具体NSNumber子类对象。工厂方法和参数都不一样。通过抽象，具体初始化的是某个类根本不知道。
[NSNumber numberWithBool:YES] 
[NSNumber numberWithInt:1]
````

### 状态模式（State）

当一个对象的内在状态改变时允许改变其行为，这个对象看起来像是改变了其类。</br>
![img](https://github.com/huang303513/Design-Pattern-For-iOS/blob/master/%E8%AE%BE%E8%AE%A1%E5%9B%BE/%E7%8A%B6%E6%80%81%E6%A8%A1%E5%BC%8F.png)</br>

````objc
//HCDWork对象指定不同的状态，writeProgrem会有不同的处理结果。
HCDWork *work = [[HCDWork alloc]init];
[work writeProgram];
work.state = [[HCDAfternoonState alloc]init];
[work writeProgram];
work.state = [[HCDEventState alloc]init];
[work writeProgram];
work.state = [[HCDSleepState alloc]init];
[work writeProgram];

比如AFN2.0的自定义Operation，有一个状态机转换规则，不同的状态下，有不同的属性设置。
````

### 适配器模式（Adapter）

将一个类的接口转换成客户希望的另外一个接口。Adapter模式使得原本由于接口不兼容而不能一起工作的那些类可以在一起工作。适配器模式主要应用于“希望复用一些现存的类，但是接口又与复用环境要求不一致的情况”，在遗留代码复用、类库迁移等方面非常有用。</br>
![img](https://github.com/huang303513/Design-Pattern-For-iOS/blob/master/%E8%AE%BE%E8%AE%A1%E5%9B%BE/%E9%80%82%E9%85%8D%E5%99%A8%E6%A8%A1%E5%BC%8F.png)</br>

````objc
比如SDWebImage里面的SDWebImageOperation协议有一个cancel方法，所有实现了该协议的对象都有cancel方法，都可以取消。从而让不同类型的对象都可以通过同一个接口取消。比如SDWebImageDownloaderOperation、SDWebImageCombinedOperation这两个不同的对象都可以调用cancel接口。

还有比如Weex消息和Porsche消息之间的通过Bridge来适配消息交互。

android的ListView就是通过adapter来实现所有的布局和事件操作的。
````

### 备忘录模式（Memento）

在不破坏封装性的前提下，捕获一个对象的内部状态，并在该对象之外保存这个状态。这样以后就可将该对象恢复到原先保存的状态。</br>
![img](https://github.com/huang303513/Design-Pattern-For-iOS/blob/master/%E8%AE%BE%E8%AE%A1%E5%9B%BE/%E5%A4%87%E5%BF%98%E5%BD%95%E6%A8%A1%E5%BC%8F.png)</br>

````objc
HCDGameRoll *roll = [[HCDGameRoll alloc]init];
[roll getState];
//把roll对象的内部状态保存到state对象中
HCDGameState *state = [roll saveState];
//manager管理state对象
HCDStateManager *manager = [[HCDStateManager alloc]initWithGameState:state];
//改变roll的内部状态
[roll fightBoss];
[roll getState];
//恢复对象的内部状态
[roll rebackState:manager.gameState];
[roll getState];

比如iOS对对象的归档接档。
````

### 组合模式（Composite）

将对象组合成树形结构以表示‘部分-整体’的层次结构。组合模式使得用户对单个对象和组合对象的使用具有一致性。</br>
![img](https://github.com/huang303513/Design-Pattern-For-iOS/blob/master/%E8%AE%BE%E8%AE%A1%E5%9B%BE/%E7%BB%84%E5%90%88%E6%A8%A1%E5%BC%8F.png)</br>

````objc
//当需求中体现部分与整体层次的结构时，以及你希望用户可以忽略组合对象与单个对象的不同，统一地使用组合结构中的所有对象，接应该考虑使用组合模式了。
HCDConcreteCompany *root = [[HCDConcreteCompany alloc]initWithName:@"总公司"];
[root add:[[HCDHRDepartment alloc]initWithName:@"总公司人力资源部"]];
[root add:[[HCDFinanceDepartment alloc]initWithName:@"总公司财务部"]];

HCDConcreteCompany *comp = [[HCDConcreteCompany alloc]initWithName:@"上海华东分公司"];
[comp add:[[HCDHRDepartment alloc]initWithName:@"上海华东分公司人力资源部"]];
[comp add:[[HCDFinanceDepartment alloc]initWithName:@"上海华东分公司财务部"]];
[root add:comp];

HCDConcreteCompany *comp1 = [[HCDConcreteCompany alloc]initWithName:@"杭州办事处"];
[comp1 add:[[HCDHRDepartment alloc]initWithName:@"杭州办事处人力资源部"]];
[comp1 add:[[HCDFinanceDepartment alloc]initWithName:@"杭州办事处财务部"]];
[root add:comp1];
NSLog(@"结构图:----------------------------");
[root display];
NSLog(@"职责:---------------------------");
[root lineofDuty];
````

### 迭代器模式（Iterator）

提供一种方法顺序访问一个聚合对象中各个元素，而又不暴露该对象的内部表示。</br>
![img](https://github.com/huang303513/Design-Pattern-For-iOS/blob/master/%E8%AE%BE%E8%AE%A1%E5%9B%BE/%E8%BF%AD%E4%BB%A3%E5%99%A8%E6%A8%A1%E5%BC%8F.png)</br>

````objc
iOS的Block迭代、数组迭代都是迭代器模式的典型实现。
````
    
### 单例模式（Singleton）

保证一个类仅有一个实例，并提供一个访问它的全局访问点。</br>
![img](https://github.com/huang303513/Design-Pattern-For-iOS/blob/master/%E8%AE%BE%E8%AE%A1%E5%9B%BE/%E5%8D%95%E5%88%97%E6%A8%A1%E5%BC%8F.png)</br>

````objc
iOS的UIApplicationDelegate就是一个单列模式的实现。
````

### 桥接模式（Bridge）

把抽象层次结构从其实现中分离出来，使其能够独立改变。抽象层定义了提供客户端使用的上层抽象接口。实现层次结构定义了供抽象层次使用的底层接口。实现类的引用被封装与抽象层的实例中。</br>
![img](https://github.com/huang303513/Design-Pattern-For-iOS/blob/master/%E8%AE%BE%E8%AE%A1%E5%9B%BE/%E6%A1%A5%E6%8E%A5%E6%A8%A1%E5%BC%8F.png)</br>

````objc
比如我项目中Web与iOS/android的交互。Web只负责一套抽象的接口(Abstraction)，在iOS环境和安卓环境有不同的实现(Implementor)来实现对应的功能，具体如何实现Web压根不用管。
````

### 命令模式（Command）

将一个请求封装为一个对象，从而使你可用不同的请求对客户进行参数化；对请求排队或记录请求日志，以及支持可撤销的操作。</br>
![img](https://github.com/huang303513/Design-Pattern-For-iOS/blob/master/%E8%AE%BE%E8%AE%A1%E5%9B%BE/%E5%91%BD%E4%BB%A4%E6%A8%A1%E5%BC%8F.png)</br>

````objc
//waiter用于接收各种类型的order。waiter是请求接收者。
//接收不同customer产生的不同order，并且都存入waiter这个接受者中,type表示不同类型的order。
HCDWaiter *waiter = [[HCDWaiter alloc]init];
//顾客一
HCDCustomr *customer = [[HCDCustomr alloc]init];
HCDOrder *customerOrder1 = [customer pushOrderWithString:@"顾客一要十串羊肉" type:orderTypeMutton];
 HCDOrder *customerOrder2 = [customer pushOrderWithString:@"顾客一要十串鸭肉" type:orderTypeDuck];
[waiter addOrder:customerOrder1];
[waiter addOrder:customerOrder2];
//顾客二
HCDCustomr *customer1 = [[HCDCustomr alloc]init];
HCDOrder *customer1Order1 = [customer1 pushOrderWithString:@"顾客二要二十串鸡肉" type:orderTypeChicken];
    HCDOrder *customer1Order2 = [customer1 pushOrderWithString:@"顾客二要二十串鸭肉" type:orderTypeDuck];
[waiter addOrder:customer1Order1];
[waiter addOrder:customer1Order2];
//顾客取消Order
[waiter deleteOrder:customer1Order2];
//waiter发送order，背后有一个HCDWorker这个单列作为行为实现者来处理具体的order。命令接收完毕，开始发送命令。
[waiter notifyOrder];
````
    
### 职责链模式（Chain of Responsibility）

使多个对象都有机会处理请求，从而避免请求的发送者和接收者之间的耦合关系。将这个对象连成一条链，并沿着这条链传递该请求，直到有一个对象处理它为止。</br>
![img](https://github.com/huang303513/Design-Pattern-For-iOS/blob/master/%E8%AE%BE%E8%AE%A1%E5%9B%BE/%E8%B4%A3%E4%BB%BB%E9%93%BE%E6%A8%A1%E5%BC%8F.png)</br>

````objc
iOS事件的传递和响应就是职责链模式的实现。
````

### 中介者模式（Mediator）

用一个中介对象来封装一系列的对象交互。中介者使各对象不需要显式地相互引用，从而使其耦合松散，而且可以独立地改变它们之间的交互。</br>
![img](https://github.com/huang303513/Design-Pattern-For-iOS/blob/master/%E8%AE%BE%E8%AE%A1%E5%9B%BE/%E4%B8%AD%E4%BB%8B%E8%80%85%E6%A8%A1%E5%BC%8F.png)</br>

````objc
///根据迪米特原则，两个不相关的对象不应该直接通讯。世界各国都通过联合国这个中介者来处理纠纷利益等。
//初始化一个中介者对象
ConcreteMediator *mediator = [[ConcreteMediator alloc]init];
//初始化并且让两个同事有相同的中介者对象
ConcreteColleague1 *c1 = [[ConcreteColleague1 alloc]initWithMediator:mediator];
ConcreteColleague2 *c2 = [[ConcreteColleague2 alloc]initWithMediator:mediator];
//给中介者对象绑定两个要交互的同事对象
mediator.colleague1 = c1;
mediator.colleague2 = c2;
//c1和c2都通过mediator发送信息
[c1 send:@"吃过饭了吗？"];
[c2 send:@"没有呢，你打算请客？"];
````
    
### 享元模式（Flyweight）

运用共享技术有效地支持大量细粒度的对象。</br>
![img](https://github.com/huang303513/Design-Pattern-For-iOS/blob/master/%E8%AE%BE%E8%AE%A1%E5%9B%BE/%E4%BA%AB%E5%85%83%E6%A8%A1%E5%BC%8F.png)</br>

````objc
比如iOS的RunTime就是享元的一个事件。每个对象调用的方法其实是他对应的类里面实现的。比如NSObject定义了很多方法让所有对象都可以使用。类对象永远只有一个，而对应的实例对象有无数个。

//享元工厂，里面包括多个共享的对象。
HCDWebSiteFactory *facoty = [[HCDWebSiteFactory alloc]init];
//虽然生成了两个fx和fy产品展示类型的对象，但是通过共享只初始化了一个产品展示的对象。
HCDWebSiteType fx = [facoty getWebSiteCategory:@"产品展示"];
HCDUser *user = [[HCDUser alloc]init];
user.name = @"小菜";
[fx use:user];
HCDWebSiteType fy = [facoty getWebSiteCategory:@"产品展示"];
HCDUser *user1 = [[HCDUser alloc]init];
user1.name = @"大鸟";
[fy use:user1];
//初始化一个博客类型的对象。以后使用都可以共享使用，因为他们有基本相似的功能。
HCDWebSiteType fz = [facoty getWebSiteCategory:@"博客"];
HCDUser *user2 = [[HCDUser alloc]init];
user2.name = @"咪咪";
[fz use:user2];
````
    
### 解释器模式（Interpreter）

给定一个语言，定义它的文法的一种表示，并定义一个解释器，这个解释器使用该表示来解释语言中的句子。</br>
![img](https://github.com/huang303513/Design-Pattern-For-iOS/blob/master/%E8%AE%BE%E8%AE%A1%E5%9B%BE/%E8%A7%A3%E9%87%8A%E5%99%A8%E6%A8%A1%E5%BC%8F.png)</br>

````objc
比如JavaScript中，判断邮件地址、电话号码、证件号码是否正确的正则表达式，每一个表达式就是一个解释器。
又比如外交部的发言。就需要解释器来解释特定的内容。达成共识(扯淡了半天),充分表达了立场(撕逼了半天),我不了解相关情况(我不想回答你的问题)。

//用于存放一些全局配置信息
HCDContext *context = [[HCDContext alloc]initWithInput:@"12345"];
NSMutableArray *list = [[NSMutableArray alloc]init];
//不同的解释器
[list addObject:[[HCDTerminalExpression alloc]init]];
[list addObject:[[HCDNonterminalExpression alloc]init]];
[list addObject:[[HCDTerminalExpression alloc]init]];
[list addObject:[[HCDTerminalExpression alloc]init]];
//获得不同解释器的解释结果
for(HCDAbstractExpression *exp in list) {
    [exp interpret:context];
}
````
    
### 访问者模式（Visitor）

表示一个作用于某对象结构中的各元素的操作。它使你可以在不改变各元素的类(男人，女人)的前提下定义作用于这些元素的新操作(喜怒哀乐)。他把数据结构(男人，女人)和作用于数据结构之上的操作(喜怒哀乐)之间的耦合解脱开，使得操作集合可以相对自由地演化</br>
![img](https://github.com/huang303513/Design-Pattern-For-iOS/blob/master/%E8%AE%BE%E8%AE%A1%E5%9B%BE/%E8%AE%BF%E9%97%AE%E8%80%85%E6%A8%A1%E5%BC%8F.png)</br>

````objc
访问者模式的有点就是增加新的操作很容易，因为增加新的操作就意味着增加一个新的访问者。
/*
 HCDConcreteElementA和HCDConcreteElementB相当于男人女人(固定不变)，当男人女人接收到喜怒哀乐(HCDConcreteVisitor1,HCDConcreteVisitor2)有不同的结果。HCDObjectStructure用于管理他们之间的关系。
 */
HCDObjectStructure *o = [[HCDObjectStructure alloc]init];
//初始化不同的element对象
HCDConcreteElementA *eA = [HCDConcreteElementA new];
HCDConcreteElementB *eB = [HCDConcreteElementB new];
//加入o对象里面，存在一个数据结构o中。
[o attach:eA];
[o attach:eB];
//初始化不同的visitor对象。
HCDConcreteVisitor1 *v1 = [HCDConcreteVisitor1 new];
HCDConcreteVisitor2 *v2 = [HCDConcreteVisitor2 new];
//eA,eB(男人女人)接收到访问者v1(喜)的不同反应。
[o accept: v1];
NSLog(@"================================");
//eA,eB(男人女人)接收到访问者v2(怒)的不同反应。
[o accept: v2];
````

## 六个原则

    单一职责原则（SRP），就一个类而言，只做一件事。
    开放-封闭原则（OCP），是说软件实体（类、模块、函数等等）应该可以拓展，但是不可修改。
    依赖倒转原则（DIP），A. 高层模块不应该依赖低层模块，两个都应该依赖抽象。B. 抽象不应该依赖细节，细节应该依赖抽象。
    里氏代换原则（LSP），子类型必须能够替换掉它们的父类型。
    迪米特法则（LoD），如果两个类不必彼此直接通信，那么这两个类就不应当发生直接的相互作用。如果其中一个类需要调用另一个类的某一个方法的话，可以通过第三者转发这个调用。
    合成/聚合复用原则（CARP），尽量使用合成/聚合，尽量不要使用类继承。

## 参考博文推荐：

[Cocoa如何应用设计模式](http://www.cnblogs.com/pengyingh/articles/2346299.html)

[大话设计模式阅读笔记](http://www.jianshu.com/p/47c67255c842)

[设计模式问答一](http://mp.weixin.qq.com/s?__biz=MzAxNzA1ODY2OA==&mid=204772288&idx=1&sn=182ebf11253f80579f386f0c9cf4750e#rd)

[设计模式问答二](http://mp.weixin.qq.com/s?__biz=MzAxNzA1ODY2OA==&mid=205051580&idx=1&sn=8dfca32f8598544922ff0adc8a6f76a4#rd)

[设计模式问答三](http://mp.weixin.qq.com/s?__biz=MzAxNzA1ODY2OA==&mid=205377346&idx=1&sn=1ea5f7328e5f545984c2c54a84a54a93#rd)

[设计模式问答四](http://mp.weixin.qq.com/s?__biz=MzAxNzA1ODY2OA==&mid=205598648&idx=1&sn=4351450c6168c4c318ca362741ac152e#rd)

