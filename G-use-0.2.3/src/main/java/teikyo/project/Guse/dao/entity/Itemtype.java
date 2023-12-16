package teikyo.project.Guse.dao.entity;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the itemtype database table.
 * 
 */
@Entity
@NamedQuery(name="Itemtype.findAll", query="SELECT i FROM Itemtype i")
public class Itemtype implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int typeID;

	private String itemType;

	//bi-directional many-to-one association to Item
	@OneToMany(mappedBy="itemtype")
	private List<Item> items;

	public Itemtype() {
	}
	
	public Itemtype(int typeID, String itemType) {
	    this.typeID=typeID;
	    this.itemType=itemType;
	}

	public int getTypeID() {
		return this.typeID;
	}

	public void setTypeID(int typeID) {
		this.typeID = typeID;
	}

	public String getItemType() {
		return this.itemType;
	}

	public void setItemType(String itemType) {
		this.itemType = itemType;
	}

	public List<Item> getItems() {
		return this.items;
	}

	public void setItems(List<Item> items) {
		this.items = items;
	}

	public Item addItem(Item item) {
		getItems().add(item);
		item.setItemtype(this);

		return item;
	}

	public Item removeItem(Item item) {
		getItems().remove(item);
		item.setItemtype(null);

		return item;
	}

}