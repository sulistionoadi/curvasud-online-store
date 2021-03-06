/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package id.ac.bsi.adi.ta.ecommerce.service;

import id.ac.bsi.adi.ta.ecommerce.domain.master.Product;
import id.ac.bsi.adi.ta.ecommerce.domain.transaction.Booking;
import id.ac.bsi.adi.ta.ecommerce.domain.transaction.ChangeOfStock;
import id.ac.bsi.adi.ta.ecommerce.domain.transaction.Invoice;
import id.ac.bsi.adi.ta.ecommerce.domain.transaction.Payment;
import id.ac.bsi.adi.ta.ecommerce.domain.transaction.Purchase;
import id.ac.bsi.adi.ta.ecommerce.domain.transaction.Testimoni;
import java.util.Date;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

/**
 *
 * @author adi
 */
public interface TransaksiService {
    
    public Purchase save(Purchase purchase);
    public Purchase findPurchaseById(String id);
    public Long countPurchaseByDate(Date startDate, Date endDate);
    public Page<Purchase> findAllPurchaseByDate(Date startDate, Date endDate, Pageable pageable);
    public List<Purchase> findAllPurchaseByPurchaseNumber(String purchaseNumber);
 
    public Payment save(Payment payment);
    public Payment findPaymentByCode(String code);
    public Long countPaymentByApproved(Boolean approved);
    public Page<Payment> findPaymentByApproved(Boolean approved, Pageable pageable);
    public List<Payment> findPaymentByBooking(Booking booking);
    
    public Booking save(Booking booking);
    public Booking findBookingByBookingCode(String kode);
    
    public void save(Invoice invoice);
    public Invoice findInvoiceByNumber(String number);
    public Long countAllInvoice();
    public Page<Invoice> findAllInvoice(Pageable pageable);
    
    public ChangeOfStock getDataStok(Product product, Date periode);
    public ChangeOfStock save(ChangeOfStock cos);
    public void generateChangeOfStock();
    public Long countStokByPeriode(Date tanggal);
    public Page<ChangeOfStock> findStokByPeriode(Date tanggal, Pageable pageable);
    
    public void comment(Testimoni testimoni);
    public void delete(Testimoni testimoni);
    public Testimoni findById(String id);
    public Long countByProduct(Product product);
    public Page<Testimoni> findTestimoniByProduct(Product product, Pageable pageable);
}
