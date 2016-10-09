package cn.aoqi.test;

class Message {
	private String title;

	public void setTitle(String title) {
		this.title = title;
	}

	public String getTitle() {
		return title;
	}
}

class Demo {
	public void fun() {
		Message msg = MyTran.msg;
		System.out.println(msg.getTitle());
	}
}

class MyTran {
	public static Message msg; //
}

public class Test_003 {
	public static void main(String[] args) {
		new Thread(new Runnable() 
		{
			public void run() {
				Message msg = new Message();
				msg.setTitle("下午考试!");
				MyTran.msg = msg;
				new Demo().fun();
			}
		}).start();

		Message msg = new Message();
		msg.setTitle("www.mldnjava.cn");
		MyTran.msg = msg;
		new Demo().fun();
	}
}
