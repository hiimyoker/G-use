package teikyo.project.Guse.dao.entity;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the departments database table.
 * 
 */
@Entity
@Table(name="departments")
@NamedQuery(name="Department.findAll", query="SELECT d FROM Department d")
public class Department implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int deptcode;

	private String deptname;

	//bi-directional many-to-one association to User
	@OneToMany(mappedBy="department")
	private List<User> users;

	public Department() {
	}

	public int getDeptcode() {
		return this.deptcode;
	}

	public void setDeptcode(int deptcode) {
		this.deptcode = deptcode;
	}

	public String getDeptname() {
		return this.deptname;
	}

	public void setDeptname(String deptname) {
		this.deptname = deptname;
	}

	public List<User> getUsers() {
		return this.users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
	}

	public User addUser(User user) {
		getUsers().add(user);
		user.setDepartment(this);

		return user;
	}

	public User removeUser(User user) {
		getUsers().remove(user);
		user.setDepartment(null);

		return user;
	}

}