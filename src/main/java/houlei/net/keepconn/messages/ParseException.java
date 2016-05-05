package houlei.net.keepconn.messages;

/**
 *	解析数据包产生异常时抛出。
 * <p>
 * 创建时间：2009-10-28 下午02:42:16
 * @author 侯磊
 * @since 1.0
 */
public class ParseException extends Exception {

	private static final long serialVersionUID = 1L;
	public ParseException() {
	}

	public ParseException(String message) {
		super(message);
	}

	public ParseException(Throwable cause) {
		super(cause);
	}

	public ParseException(String message, Throwable cause) {
		super(message, cause);
	}

}