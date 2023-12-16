package teikyo.project.Guse.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;
import javax.persistence.*;
import teikyo.project.Guse.dao.entity.*;

public class Dao {

    @PersistenceUnit
    EntityManagerFactory emf;

    @PersistenceContext(unitName = "2023team_g")
    EntityManager manager;


    void createManager() {
        emf = Persistence.createEntityManagerFactory("2023team_g");
        manager = emf.createEntityManager();
    }

    void closeManager() {
        if (manager != null && manager.isOpen()) {
            try {
                manager.close();
                emf.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
            manager = null;
            emf = null;
        }
    }

    public List<User> getUserList() {
        try {
            createManager();

            Query query = manager.createQuery("from User");
            List<User> result = query.getResultList();

            closeManager();

            return result;
        } catch (Exception e) {
            e.printStackTrace();
            closeManager();
        }
        return null;
    }
    public List<Chat> getChatList() {
        try {
            createManager();

            Query query = manager.createQuery("from Chat");
            List<Chat> result = query.getResultList();

            closeManager();

            return result;
        } catch (Exception e) {
            e.printStackTrace();
            closeManager();
        }
        return null;
    }

    public User getUser(String userid) {
        try {
            createManager();
            User result = manager.find(User.class, userid);
            closeManager();
            return result;
        } catch (Exception e) {
            e.printStackTrace();
            closeManager();
        }
        return null;
    }
    

    private static Connection getConnection() {
        try {
            Class.forName("org.postgresql.Driver");
            return DriverManager.getConnection("jdbc:postgresql:login","postgres", "root");
        } catch (Exception e) {
            throw new IllegalArgumentException(e);
        }
    }
 
    private static void allClose(PreparedStatement statement, Connection connection) {
        if (statement != null) {
            try {
                statement.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (connection != null) {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
 
    }
 
    static Connection connection = null;
    static PreparedStatement statement = null;
 
    public Dto findUser(String id) {
        Dto user = new Dto();
 
        try {
            connection = getConnection();
 
            statement = connection.prepareStatement("SELECT * FROM userinf WHERE userid = ?");
            statement.setString(1, id);
            ResultSet resultSet = statement.executeQuery();
 
            if (!resultSet.next()) { return null; }
 
            user.setUserid(resultSet.getString("userid"));
            user.setPassword(resultSet.getString("password"));
 
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            allClose(statement, connection);
        }
        return user;
 
    }
   
    
    public Item getItem(String itemid) {
        try {
            createManager();
            Item result=manager.find(Item.class, itemid);
            closeManager();
            return result;
        }catch(Exception e) {
            e.printStackTrace();
            closeManager();
        }
        return null;
    }
    public boolean updateLogin(int loginstatus,String userid) {
        try {
        createManager();
        
        //トランザクションを開始
        manager.getTransaction().begin();
        //DB から対象となる情報を取得
       User user = manager.find(User.class,userid );
        //新しい値をセット
        user.setLoginstatus(loginstatus);
      
        
        manager.getTransaction().commit();
        
        closeManager();
        
        //成功したので true を返す
        return true;
        
        }catch (Exception e) {
        e.printStackTrace();
        if(manager.isOpen())closeManager();
        }
        //失敗したときは false を返す
        return false;
        }

    public boolean insertChat(Chat chat) {
        try {
            createManager();
            manager.getTransaction().begin();
            manager.persist(chat);  // Use the provided Chat object
            manager.getTransaction().commit();

            closeManager();

            return true;

        } catch (Exception e) {
            e.printStackTrace();
            closeManager();
        }
        return false;
    }



    public Chat getChat(String chatid) {
        try {
            createManager();
            Chat result=manager.find(Chat.class, chatid);
            closeManager();
            return result;
        }catch(Exception e) {
            e.printStackTrace();
            closeManager();
        }
        return null;
    }
    
    public boolean insertItem(Item it) {
            try {
                createManager();
                manager.getTransaction().begin();
                manager.persist(it);
                manager.getTransaction().commit();

                closeManager();

                return true;

            } catch (Exception e) {
                e.printStackTrace();
                closeManager();
            }
            return false;
    }
    
    public List<Itemtype> getItemtypesList() {
        try {
            createManager();

            Query query = manager.createQuery("from Itemtype");
            List<Itemtype> result = query.getResultList();

            closeManager();

            return result;
        } catch (Exception e) {
            e.printStackTrace();
            closeManager();
        }
        return null;
    }

}