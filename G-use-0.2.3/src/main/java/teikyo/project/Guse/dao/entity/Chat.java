package teikyo.project.Guse.dao.entity;

import java.io.Serializable;
import javax.persistence.*;
import java.sql.Timestamp;


/**
 * The persistent class for the chat database table.
 * 
 */
@Entity
@NamedQuery(name="Chat.findAll", query="SELECT c FROM Chat c")
public class Chat implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int chatid;

	private Timestamp chatDate;

	@Lob
	private String comment;

	private int evaluate;

	@Lob
	private String evaluateComment;

	@Lob
	private String itemDescription;

	//bi-directional many-to-one association to User
	@ManyToOne
	@JoinColumn(name="Userid")
	private User user;

	//bi-directional many-to-one association to Item
	@ManyToOne
	@JoinColumn(name="Itemid")
	private Item item;

	public Chat() {
	}

	public int getChatid() {
		return this.chatid;
	}

	public void setChatid(int chatid) {
		this.chatid = chatid;
	}

	public Timestamp getChatDate() {
		return this.chatDate;
	}

	public void setChatDate(Timestamp chatDate) {
		this.chatDate = chatDate;
	}

	public String getComment() {
		return this.comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public int getEvaluate() {
		return this.evaluate;
	}

	public void setEvaluate(int evaluate) {
		this.evaluate = evaluate;
	}

	public String getEvaluateComment() {
		return this.evaluateComment;
	}

	public void setEvaluateComment(String evaluateComment) {
		this.evaluateComment = evaluateComment;
	}

	public String getItemDescription() {
		return this.itemDescription;
	}

	public void setItemDescription(String itemDescription) {
		this.itemDescription = itemDescription;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Item getItem() {
		return this.item;
	}

	public void setItem(Item item) {
		this.item = item;
	}

}