package vn.hoidanit.laptopshop.domain;

import jakarta.annotation.Generated;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "oder_detail")
public class OderDetail {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    private long id;
    private long quanity;
    private double price;

    // oder id
    @ManyToOne
    @JoinColumn(name = "oder_id")
    private Oder oder;

    // product id
    @ManyToOne
    @JoinColumn(name = "product_id")
    private Product product;
}
