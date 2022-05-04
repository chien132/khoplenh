package chien.chuyende.khoplenh.model;

import java.math.BigDecimal;
import java.sql.Timestamp;

public class LenhDat {

    private String macp;
    private Timestamp ngaydat;
    private String loaigd;
    private String loailenh;
    private int soluong;
    private BigDecimal giadat;

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

    public int getSoluong() {
        return soluong;
    }

    public void setSoluong(int soluong) {
        this.soluong = soluong;
    }

    public BigDecimal getGiadat() {
        return giadat;
    }

    public void setGiadat(BigDecimal giadat) {
        this.giadat = giadat;
    }
}
