package teikyo.project.Guse;

import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JFrame;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.mysql.jdbc.PreparedStatement;

import teikyo.project.Guse.dao.Dao;
import teikyo.project.Guse.dao.Dto;

import teikyo.project.Guse.dao.entity.*;
import teikyo.project.Guse.forms.*;
import teikyo.sdl.lec8.entity.Department;

import javax.swing.JOptionPane;
 

/**
 * Handles requests for the application home page.
 */
@Controller
@SessionAttributes("LoginSes")
public class HomeController {

    private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
    
    @ModelAttribute("LoginSes")
    public LoginSession getLoginSession() {
        return new LoginSession();
    }

    /**
     * Simply selects the home view to render by returning its name.
     */
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String home(Locale locale, Model model) {

        return "loginPage";
    }


    

    
    //出品登録 
    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String Add(RegistItemForm form, Model model, @ModelAttribute("LoginSes") LoginSession user) {
        User newUs=new User();
        Item newIt = new Item();
        Timestamp timestamp=new Timestamp(System.currentTimeMillis());  //現在時刻取得
        newUs.setUserid(user.getUser()); //Userid取得
        newIt.setUser(newUs); //Useridセット
        newIt.setCustomerid(null);  //Customeridセット
        newIt.setItemname(form.getItemname());  //Itemnameセット
        newIt.setTerm(form.getTerm());  //Term(期限)セット
        newIt.setStatus(0);  //Statusセット
        newIt.setInsertDate(timestamp);  //InsertDateセット
        newIt.setItemDescription(form.getItemdiscripition());  //ItemDescriptionセット
        
        Itemtype type=new Itemtype(form.getItemtype(),"");
        newIt.setItemtype(type);  //Itemtypeセット
        
        
        
        Dao dao=new Dao();
        dao.insertItem(newIt);
        
        
        
        return "home";
    }
    
    

    @RequestMapping(value = "/mypage", method = RequestMethod.GET)
    public String Mypage(Model model) {
        return "mypage";
    }

    @RequestMapping(value = "/chat", method = RequestMethod.GET)
    public String Chat(@RequestParam("message") String message,LoginSession log,Model model,loginForm form) {
        Dao dao = new Dao();
        
        List<Chat> result = dao.getChatList();

        model.addAttribute("result", result);
        
        return "chater";
     }

    @RequestMapping(value = "/chater", method = RequestMethod.POST)
    public String Chater(@RequestParam("message") String message,LoginSession log,Model model) {
        Dao dao = new Dao();
        Chat chat= new Chat();
        long millis = System.currentTimeMillis();
        Timestamp timestamp = new Timestamp(millis);
        chat.setChatDate(timestamp);
        chat.setComment(message);
        chat.setUser(dao.getUser(log.getUser()));
        dao.insertChat(chat);
    return "redirect:/chat";

    }


  

    @RequestMapping(value = "/edit", method = RequestMethod.GET)
    public String Edit(Model model) {
        model.addAttribute("formMode", 1);
        return "edit";
    }

    @RequestMapping(value = "/editItems", method = RequestMethod.GET)
    public String EditItems(Model model) {
        model.addAttribute("formMode", 1);
        return "editItems";
    }

    @RequestMapping(value = "/deleteCon", method = RequestMethod.GET)
    public String DeleteItem(Model model) {
        model.addAttribute("formMode", 2);
        return "edit";
    }

    @RequestMapping(value = "/exhibit", method = RequestMethod.GET)
    public String Exhibit(Model model) {
        return "exhibit";
    }

    @RequestMapping(value = "/evaluation", method = RequestMethod.GET)
    public String evaluation(Model model) {
        return "evaluation";
    }

    @RequestMapping(value = "/stop", method = RequestMethod.GET)
    public String Stop(Model model) {
        return "exhibit";
    }



    @RequestMapping(value = "/AddAccount", method = RequestMethod.GET)
    public String AddAccount(Model model) {
        return "AddAccount";
    }

    @RequestMapping(value = "/AddAccountC", method = RequestMethod.GET)
    public String AddAccountC(Model model) {
        return "AddAccountC";
    }

    @RequestMapping(value = "/DeleatAccount", method = RequestMethod.GET)
    public String DeleatAccount(Model model) {
        return "DeleatAccount";
    }

    @RequestMapping(value = "/DeleatAccountC", method = RequestMethod.GET)
    public String DeleatAccountC(Model model) {
        return "DeleatAccountC";
    }

    @RequestMapping(value = "/managementHome", method = RequestMethod.GET)
    public String managementHome(Model model) {
        return "masthome";
    }

    //ログイン処理
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String Login(Model model,@RequestParam("id") String id, @RequestParam("pass") String pass,LoginSession log,loginForm form) {
             Dao dao = new Dao();    
             User st = dao.getUser(id);        
      if (st.getPassWord().equals(pass) ) {  
          if (log != null) {
              log.setUser(id);
          }
         dao.updateLogin(1, log.getUser());
            return "redirect:/home";  
           }
        
           
      if (st.getPassWord().equals(pass) ) {
          log.setUser(id);
         dao.updateLogin(1, log.getUser());
            return "redirect:/home";
           } else {

               JOptionPane.showMessageDialog(null, "IDもしくはパスワードが違います");
         return "loginPage";

       }        
    }
          
      
     
    @RequestMapping(value = "/logout", method = RequestMethod.POST)
    public String logout(Model model, LoginSession log, loginForm form) {
        System.out.println(log.getUser());
        Dao dao = new Dao();
        dao.updateLogin(0, log.getUser());
        return "redirect:/";
    }
    
    @RequestMapping(value = { "/end", "home", "delete" }, method = RequestMethod.GET)
    public String End(Model model) {
        List<Itemtype> Itemtypes = new Dao().getItemtypesList();
        Itemtypes.add(0,new Itemtype(0,"全種類"));
        model.addAttribute("Itemtypes", Itemtypes);
        return "home";
    }
    
    
    @RequestMapping(value = "/addItems", method = RequestMethod.GET)
    public String addItems(Model model) {
        List<Itemtype> Itemtypes = new Dao().getItemtypesList();
        model.addAttribute("Itemtypes", Itemtypes);
        return "exhibitForm";
    }
}