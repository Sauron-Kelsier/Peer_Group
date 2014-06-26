package QuizPackets;

import java.io.Serializable;

public class ResponsePacket implements Serializable{
	public static final long serialVersionUID = 11911L;
	public int questionSequenceNo;
	public String uID;
	public byte level;
	public String answer;
	public boolean result;
	public boolean ack;
}
