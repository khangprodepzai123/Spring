package vn.hoidanit.laptopshop.domain;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "contests")
public class Contest {

    @Id
    private String ID;
    private String TEN;
    private String MOTA;

    public String getID() {
        return ID;
    }

    public void setID(String iD) {
        ID = iD;
    }

    public String getTEN() {
        return TEN;
    }

    public void setTEN(String tEN) {
        TEN = tEN;
    }

    public String getMOTA() {
        return MOTA;
    }

    public void setMOTA(String mOTA) {
        MOTA = mOTA;
    }

}
