package teikyo.project.Guse.forms;

public class RegistItemForm {
    int term; //期限
    int itemtype; //商品の分類
    String itemname; //商品名
    String itemdiscripition; //商品説明
    
    public int getTerm() {
        return term;
    }
    public void setTerm(int term) {
        this.term = term;
    }
    public int getItemtype() {
        return itemtype;
    }
    public void setItemtype(int itemtype) {
        this.itemtype = itemtype;
    }
    public String getItemname() {
        return itemname;
    }
    public void setItemname(String itemname) {
        this.itemname = itemname;
    }
    public String getItemdiscripition() {
        return itemdiscripition;
    }
    public void setItemdiscripition(String itemdiscripition) {
        this.itemdiscripition = itemdiscripition;
    }
}
