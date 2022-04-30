package chien.chuyende.khoplenh.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import chien.chuyende.khoplenh.model.LenhDat;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Transactional
@Controller
public class MainController {

//    @Autowired
    SessionFactory factory;

    @RequestMapping(value ="/welcome", method = RequestMethod.GET)
    public String welcome(ModelMap model, HttpSession session2) {
        model.addAttribute("lenh", new LenhDat());
        return "main";
    }
    @RequestMapping(value = "/welcome", method = RequestMethod.POST)
    public String welcome(ModelMap model, HttpSession session2,@ModelAttribute("lenh") LenhDat lenh) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();
        try {
            Query query = session.createSQLQuery("{CALL " +
                    "SP_KHOPLENH_LO(:macp,:Ngay,:LoaiGD,:soluongMB,:giadatMB)}");
            query.setParameter("macp", lenh.getMacp());
            DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss.SSS");
            Date now = new Date();
            query.setParameter("Ngay", dateFormat.format(now));
            query.setParameter("LoaiGD", lenh.getLoaigd());
            query.setParameter("soluongMB", lenh.getSoluong());
            query.setParameter("giadatMB", lenh.getGiadat());
            int exRows = query.executeUpdate();
            t.commit();
            model.addAttribute("message", "Thành công!		Mã: "+lenh.getMacp()+"		Loại GD: "+lenh.getLoaigd()+"		Số lượng: "+lenh.getSoluong()+"		Giá: "+lenh.getGiadat());
            model.addAttribute("lenh", new LenhDat());
        }
        catch (Exception e){
            t.rollback();
            model.addAttribute("message", "Thất bại!");
        }
        return "main";
    }
}
