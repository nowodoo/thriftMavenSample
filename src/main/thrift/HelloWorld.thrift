namespace  * com.hzins.thrift.demo


service  HelloWorldService{
  string sayHello(1:required string username)
}



struct Msg {
	1:required i64 id; // ID
	2:optional byte content;//内容
}
struct Content {
	1:optional i64 id; // ID
	2:optional string phone; // 电话
	3:optional double price; //价格
	4:optional binary  tbase;  
}

struct ThriftRequest {
	1:required string command; // cmd
	2:optional binary requestParam;
}

struct ThriftResponse {
	1:optional binary body;
}

service FrameworkService{
    ThriftResponse execute(1:required ThriftRequest request)
}