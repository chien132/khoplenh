package chien.chuyende.khoplenh.model;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;


@Entity
@Table(name = "LENHKHOP")
public class LenhKhop {
    @Id
    @GeneratedValue
    @Column(name = "IDKHOP")
    private Integer idkhop;
    @Column(name = "NGAYKHOP")
    private Timestamp ngaykhop;
    @Column(name = "SOLUONGKHOP")
    private Integer soluongkhop;
    @Column(name = "GIAKHOP")
    private Float giakhop;
    @Column(name = "IDLENHDAT")
    private Integer idlenhdat;

    public Integer getIdkhop() {
        return idkhop;
    }

    public void setIdkhop(Integer idkhop) {
        this.idkhop = idkhop;
    }

    public Timestamp getNgaykhop() {
        return ngaykhop;
    }

    public void setNgaykhop(Timestamp ngaykhop) {
        this.ngaykhop = ngaykhop;
    }

    public Integer getSoluongkhop() {
        return soluongkhop;
    }

    public void setSoluongkhop(Integer soluongkhop) {
        this.soluongkhop = soluongkhop;
    }

    public Float getGiakhop() {
        return giakhop;
    }

    public void setGiakhop(Float giakhop) {
        this.giakhop = giakhop;
    }

    public Integer getIdlenhdat() {
        return idlenhdat;
    }

    public void setIdlenhdat(Integer idlenhdat) {
        this.idlenhdat = idlenhdat;
    }

}
