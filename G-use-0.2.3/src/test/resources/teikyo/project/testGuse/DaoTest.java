package teikyo.project.testGuse;

import static org.junit.Assert.*;
import java.util.List;
import org.junit.Test;
import teikyo.project.Guse.dao.Dao;
import teikyo.project.Guse.dao.entity.Chat;

import teikyo.project.Guse.dao.entity.Itemtype;

import teikyo.project.Guse.dao.entity.User;

public class DaoTest {
    
    //Userid の存在を確認するテスト
    @Test 
    public void testGetUserList() {
        Dao dao = new Dao();

        List<User> result = dao.getUserList();

        // ユーザーリストが空でないことを確認
        assertNotNull(result);

        // ある特定のユーザーが含まれていることを確認（例: ユーザーIDが "213127" のユーザーが含まれているか）
        boolean userWithId213127Exists = false;
        for (User user : result) {
            if ("213127".equals(user.getUserid())) {
                userWithId213127Exists = true;
                break;
            }
        }
        assertTrue(userWithId213127Exists);
    }
    
    //UserPass のテスト
    @Test
    public void testGetUserPass() {
        Dao dao = new Dao();

        List<User> result = dao.getUserList();

        // ユーザーリストが空でないことを確認
        assertNotNull(result);

        // ある特定のユーザーが含まれていることを確認（例: ユーザーIDが "213127" のユーザーが含まれているか）
        for (User user : result) {
            if ("213127".equals(user.getUserid())) {
                assertEquals("213127", user.getPassWord());
                break;
            }
        }
    }
    @Test 
    void testcheckRwgistChat() {
        Dao dao =  new Dao();
        Chat chat = new Chat();
        
       boolean result= dao.insertChat(chat);
       assertEquals(result ,"True");
    }

    //getItemtypesList を確認するテスト
    @Test 
    public void testgetItemtypesList() {
        Dao dao = new Dao();

        List<Itemtype> result = dao.getItemtypesList();

        // リストが空でないことを確認
        assertNotNull(result);
        boolean Exists = false;
        for (Itemtype i : result) {
            if ("インテリア".equals(i.getItemType())) {
                Exists = true;
                break;
            }
        }
        assertTrue(Exists);
        }
    

}
