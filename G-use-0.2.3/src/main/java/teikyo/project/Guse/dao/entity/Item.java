package teikyo.project.Guse.dao.entity;

import java.io.Serializable;
import javax.persistence.*;
import java.sql.Timestamp;
import java.util.List;


/**
 * The persistent class for the item database table.
 * 
 */
@Entity
@NamedQuery(name="Item.findAll", query="SELECT i FROM Item i")
public class Item implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int itemid;

	private String customerid;

	private Timestamp insertDate;

	private String itemname;

	private String picture;

	private int status;

	private int term;
	
	private String ItemDescription;

	//bi-directional many-to-one association to Chat
	@OneToMany(mappedBy="item")
	private List<Chat> chats;

	//bi-directional many-to-one association to Itemtype
	@ManyToOne
	@JoinColumn(name="TypeID")
	private Itemtype itemtype;

	//bi-directional many-to-one association to User
	@ManyToOne
	@JoinColumn(name="Userid")
	private User user;

	public Item() {
	}

	public int getItemid() {
		return this.itemid;
	}

	public void setItemid(int itemid) {
		this.itemid = itemid;
	}

	public String getCustomerid() {
		return this.customerid;
	}

	public void setCustomerid(String customerid) {
		this.customerid = customerid;
	}

	public Timestamp getInsertDate() {
		return this.insertDate;
	}

	public void setInsertDate(Timestamp insertDate) {
		this.insertDate = insertDate;
	}

	public String getItemname() {
		return this.itemname;
	}

	public void setItemname(String itemname) {
		this.itemname = itemname;
	}

	public String getPicture() {
		return this.picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public int getStatus() {
		return this.status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public int getTerm() {
		return this.term;
	}

	public void setTerm(int term) {
		this.term = term;
	}
	
	public String getItemDescription() {
	    return this.ItemDescription;
	}
	
	public void setItemDescription(String ItemDescription) {
	    this.ItemDescription=ItemDescription;
	}

	public List<Chat> getChats() {
		return this.chats;
	}

	public void setChats(List<Chat> chats) {
		this.chats = chats;
	}

	public Chat addChat(Chat chat) {
		getChats().add(chat);
		chat.setItem(this);

		return chat;
	}

	public Chat removeChat(Chat chat) {
		getChats().remove(chat);
		chat.setItem(null);

		return chat;
	}

	public Itemtype getItemtype() {
		return this.itemtype;
	}

	public void setItemtype(Itemtype itemtype) {
		this.itemtype = itemtype;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

}