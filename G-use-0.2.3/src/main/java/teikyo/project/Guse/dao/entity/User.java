package teikyo.project.Guse.dao.entity;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the user database table.
 * 
 */
@Entity
@NamedQuery(name="User.findAll", query="SELECT u FROM User u")
public class User implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String userid;

	private int disable;

	private int loginflag;

	private int loginstatus;

	private String passWord;

	private int yearofadmission;

	//bi-directional many-to-one association to Chat
	@OneToMany(mappedBy="user")
	private List<Chat> chats;

	//bi-directional many-to-one association to Item
	@OneToMany(mappedBy="user")
	private List<Item> items;

	//bi-directional many-to-one association to Department
	@ManyToOne
	@JoinColumn(name="Deptcode")
	private Department department;

	public User() {
	}

	public String getUserid() {
		return this.userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public int getDisable() {
		return this.disable;
	}

	public void setDisable(int disable) {
		this.disable = disable;
	}

	public int getLoginflag() {
		return this.loginflag;
	}

	public void setLoginflag(int loginflag) {
		this.loginflag = loginflag;
	}

	public int getLoginstatus() {
		return this.loginstatus;
	}

	public void setLoginstatus(int loginstatus) {
		this.loginstatus = loginstatus;
	}

	public String getPassWord() {
		return this.passWord;
	}

	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}

	public int getYearofadmission() {
		return this.yearofadmission;
	}

	public void setYearofadmission(int yearofadmission) {
		this.yearofadmission = yearofadmission;
	}

	public List<Chat> getChats() {
		return this.chats;
	}

	public void setChats(List<Chat> chats) {
		this.chats = chats;
	}

	public Chat addChat(Chat chat) {
		getChats().add(chat);
		chat.setUser(this);

		return chat;
	}

	public Chat removeChat(Chat chat) {
		getChats().remove(chat);
		chat.setUser(null);

		return chat;
	}

	public List<Item> getItems() {
		return this.items;
	}

	public void setItems(List<Item> items) {
		this.items = items;
	}

	public Item addItem(Item item) {
		getItems().add(item);
		item.setUser(this);

		return item;
	}

	public Item removeItem(Item item) {
		getItems().remove(item);
		item.setUser(null);

		return item;
	}

	public Department getDepartment() {
		return this.department;
	}

	public void setDepartment(Department department) {
		this.department = department;
	}

}