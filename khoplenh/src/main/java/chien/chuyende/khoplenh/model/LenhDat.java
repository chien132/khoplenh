package chien.chuyende.khoplenh.model;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;



@Entity
@Table(name = "LENHDAT")
public class LenhDat {
    @Id
    @GeneratedValue
    @Column(name = "ID")
    private Integer id;
    @Column(name = "MACP")
    private String macp;
    @Column(name = "NGAYDAT")
    private Timestamp ngaydat;
    @Column(name = "LOAIGD")
    private String loaigd;
    @Column(name = "LOAILENH")
    private String loailenh;
    @Column(name = "SOLUONG")
    private Integer soluong;
    @Column(name = "GIADAT")
    private Float giadat;
    @Column(name = "TRANGTHAILENH")
    private String trangthailenh;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getMacp() {
        return macp;
    }

    public void setMacp(String macp) {
        this.macp = macp;
    }

    public Timestamp getNgaydat() {
        return ngaydat;
    }

    public void setNgaydat(Timestamp ngaydat) {
        this.ngaydat = ngaydat;
    }

    public String getLoaigd() {
        return loaigd;
    }

    public void setLoaigd(String loaigd) {
        this.loaigd = loaigd;
    }

    public String getLoailenh() {
        return loailenh;
    }

    public void setLoailenh(String loailenh) {
        this.loailenh = loailenh;
    }

    public Integer getSoluong() {
        return soluong;
    }

    public void setSoluong(Integer soluong) {
        this.soluong = soluong;
    }

    public Float getGiadat() {
        return giadat;
    }

    public void setGiadat(Float giadat) {
        this.giadat = giadat;
    }

    public String getTrangthailenh() {
        return trangthailenh;
    }

    public void setTrangthailenh(String trangthailenh) {
        this.trangthailenh = trangthailenh;
    }

}
