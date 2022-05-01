package chien.chuyende.khoplenh.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import chien.chuyende.khoplenh.model.LenhDat;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.transaction.Transactional;

@Transactional
@Controller
public class MainController {

    @Autowired
    SessionFactory factory;

    @RequestMapping("")
    public String index() {
        return "redirect:/datlenh";
    }

    @RequestMapping(value = "datlenh", method = RequestMethod.GET)
    public String welcome(ModelMap model) {
        model.addAttribute("lenh", new LenhDat());
        return "main";
    }

    @RequestMapping(value = "datlenh", method = RequestMethod.POST)
    public String welcome(ModelMap model, @ModelAttribute("lenh") LenhDat lenh) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();
        
        try {
            Query query = session.createSQLQuery("{CALL " +
                    "SP_KHOPLENH_LO(:macp,:Ngay,:LoaiGD,:soluongMB,:giadatMB)}");
            query.setParameter("macp", lenh.getMacp().trim().toUpperCase());
            DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.mmm");
            Date now = new Date();
            System.out.println(dateFormat.format(now));
            query.setParameter("Ngay", dateFormat.format(now));
            query.setParameter("LoaiGD", lenh.getLoaigd());
            query.setParameter("soluongMB", lenh.getSoluong());
            query.setParameter("giadatMB", lenh.getGiadat());
            int exRows = query.executeUpdate();
            t.commit();
            model.addAttribute("message", "Thành công! \t Mã: " + lenh.getMacp() + " | Loại GD: " + (lenh.getLoaigd().equals("M") ? "Mua" : "Bán") + " | Số lượng: " + lenh.getSoluong() + " | Giá: " + lenh.getGiadat());
            model.addAttribute("lenh", new LenhDat());
        } catch (Exception e) {
            t.rollback();
            model.addAttribute("message", "Thất bại!");
        }
        return "main";
    }
}
