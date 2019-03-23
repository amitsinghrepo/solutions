package com.creative.solutions.controller;
 
import java.io.IOException;
 
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.creative.solutions.dao.OrderDAO;
import com.creative.solutions.dao.ProductDAO;
import com.creative.solutions.dao.UserContactUsDAO;
import com.creative.solutions.dao.UserEnquiryDAO;
import com.creative.solutions.entity.ContactUs;
import com.creative.solutions.entity.Enquiry;
import com.creative.solutions.entity.Product;
import com.creative.solutions.model.CartInfo;
import com.creative.solutions.model.CustomerInfo;
import com.creative.solutions.model.PaginationResult;
import com.creative.solutions.model.ProductInfo;
import com.creative.solutions.util.Utils;
import com.creative.solutions.validator.CustomerInfoValidator;
 
@Controller
// Enable Hibernate Transaction.
@Transactional
// Need to use RedirectAttributes
@EnableWebMvc
public class MainController {
 
    @Autowired
    private OrderDAO orderDAO;
 
    @Autowired
    private ProductDAO productDAO;
    
    @Autowired
    private UserContactUsDAO userContactUsDAO;
    
    @Autowired
    private UserEnquiryDAO userEnquiryDAO;
    
    @Autowired
    private CustomerInfoValidator customerInfoValidator;
 
    @InitBinder
    public void myInitBinder(WebDataBinder dataBinder) {
        Object target = dataBinder.getTarget();
        if (target == null) {
            return;
        }
        System.out.println("Target=" + target);
 
        // For Cart Form.
        // (@ModelAttribute("cartForm") @Validated CartInfo cartForm)
        if (target.getClass() == CartInfo.class) {
 
        }
        // For Customer Form.
        // (@ModelAttribute("customerForm") @Validated CustomerInfo
        // customerForm)
        else if (target.getClass() == CustomerInfo.class) {
            dataBinder.setValidator(customerInfoValidator);
        }
 
    }
 
    @RequestMapping("/403")
    public String accessDenied() {
        return "/403";
    }
 
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String home(Model model) {
    	model.addAttribute("userEnquiryInfo", new Enquiry()); // the Category object is used as a template to generate the form
        return "index";
    }
 
    // Product List page.
    // Danh sách sản phẩm.
    @RequestMapping({ "/productList" })
    public String listProductHandler(Model model, //
            @RequestParam(value = "name", defaultValue = "") String likeName,
            @RequestParam(value = "page", defaultValue = "1") int page) {
        final int maxResult = 5;
        final int maxNavigationPage = 10;
 
        PaginationResult<ProductInfo> result = productDAO.queryProducts(page, //
                maxResult, maxNavigationPage, likeName);
 
        model.addAttribute("paginationProducts", result);
        return "productList";
    }
 
    @RequestMapping({ "/buyProduct" })
    public String listProductHandler(HttpServletRequest request, Model model, //
            @RequestParam(value = "code", defaultValue = "") String code) {
 
        Product product = null;
        if (code != null && code.length() > 0) {
            product = productDAO.findProduct(code);
        }
        if (product != null) {
 
            // Cart info stored in Session.
            CartInfo cartInfo = Utils.getCartInSession(request);
 
            ProductInfo productInfo = new ProductInfo(product);
 
            cartInfo.addProduct(productInfo, 1);
        }
        // Redirect to shoppingCart page.
        return "redirect:/shoppingCart";
    }
    
   /* @RequestMapping({ "/toShoppingCart" })
    public String reDirectToShoppinfcart(HttpServletRequest request, Model model) {
        // Redirect to shoppingCart page.
        return "redirect:/testjsp";
    }*/
    
    
    // GET: Show Cart
    @RequestMapping(value = { "/toAboutUs" }, method = RequestMethod.GET)
    public String reDirectToShoppinfcart(HttpServletRequest request) {
        return "AboutUs";
    }
    
    @RequestMapping(value = { "/toCourses" }, method = RequestMethod.GET)
    public String reDirectToSinglePage(HttpServletRequest request) {
    	System.out.println("xxfdfsdfsf--Name-toCourses-");
        // Redirect to shoppingCart page.
        return "Courses";
    }
    
    @ModelAttribute("userContactUsDetails")
    public ContactUs createContactUsModel() {
        return new ContactUs();
    }
    
    @RequestMapping(value = { "/toContactUs" }, method = RequestMethod.GET)
    public String reDirectToContactUs(HttpServletRequest request) {
    	//model.addAttribute("userContactUsDetails", new ContactUs());
        return "ContactUs";
    }
    
    @RequestMapping(value = { "/saveUserContactUs" }, method=RequestMethod.POST)
    public String saveContactUs(HttpServletRequest request, @ModelAttribute("userContactUsDetails") ContactUs userContactUsDetails, @RequestParam("comment") String comment) {
    	System.out.println("saveContactUs-11---"+userContactUsDetails.getName());
    	System.out.println("saveContactUs-22---"+userContactUsDetails.getEmail());
    	System.out.println("saveContactUs-22-comment--"+comment);
    	userContactUsDetails.setComment(comment);
    	userContactUsDAO.save(userContactUsDetails);
    	//return "employee_info_display";
        // Redirect to shoppingCart page.
    	return "redirect:/toContactUs";
    }
    @RequestMapping(value = { "/saveUserEnquiry" }, method = RequestMethod.POST)
    public String saveUserEnquiry(Model model, @ModelAttribute("userEnquiryInfo") Enquiry userEnquiryInfo, @RequestParam("comment") String comment) {
    	System.out.println("xxfdfsdfsf--Name-toCourses-");
    	System.out.println("xxfdfsdfsf--Name--"+userEnquiryInfo.getName());
        System.out.println("ERsfdf--Email---"+userEnquiryInfo.getEmail());
        System.out.println("ERsfdf--Email-comment--"+comment);
        userEnquiryInfo.setComment(comment);
    	userEnquiryDAO.save(userEnquiryInfo);
    	// model.addAttribute("userEnquiryInfo", userEnquiryDetails);
    	//return "employee_info_display";
    	return "redirect:/";
    }
 
    @RequestMapping({ "/shoppingCartRemoveProduct" })
    public String removeProductHandler(HttpServletRequest request, Model model, //
            @RequestParam(value = "code", defaultValue = "") String code) {
        Product product = null;
        if (code != null && code.length() > 0) {
            product = productDAO.findProduct(code);
        }
        if (product != null) {
 
            // Cart Info stored in Session.
            CartInfo cartInfo = Utils.getCartInSession(request);
 
            ProductInfo productInfo = new ProductInfo(product);
 
            cartInfo.removeProduct(productInfo);
 
        }
        // Redirect to shoppingCart page.
        return "redirect:/shoppingCart";
    }
 
    // POST: Update quantity of products in cart.
    @RequestMapping(value = { "/shoppingCart" }, method = RequestMethod.POST)
    public String shoppingCartUpdateQty(HttpServletRequest request, //
            Model model, //
            @ModelAttribute("cartForm") CartInfo cartForm) {
 
        CartInfo cartInfo = Utils.getCartInSession(request);
        cartInfo.updateQuantity(cartForm);
 
        // Redirect to shoppingCart page.
        return "redirect:/shoppingCart";
    }
 
    // GET: Show Cart
    @RequestMapping(value = { "/shoppingCart" }, method = RequestMethod.GET)
    public String shoppingCartHandler(HttpServletRequest request, Model model) {
        CartInfo myCart = Utils.getCartInSession(request);
 
        model.addAttribute("cartForm", myCart);
        return "shoppingCart";
    }
 
    // GET: Enter customer information.
    @RequestMapping(value = { "/shoppingCartCustomer" }, method = RequestMethod.GET)
    public String shoppingCartCustomerForm(HttpServletRequest request, Model model) {
 
        CartInfo cartInfo = Utils.getCartInSession(request);
      
        // Cart is empty.
        if (cartInfo.isEmpty()) {
             
            // Redirect to shoppingCart page.
            return "redirect:/shoppingCart";
        }
 
        CustomerInfo customerInfo = cartInfo.getCustomerInfo();
        if (customerInfo == null) {
            customerInfo = new CustomerInfo();
        }
 
        model.addAttribute("customerForm", customerInfo);
 
        return "shoppingCartCustomer";
    }
 
    // POST: Save customer information.
    @RequestMapping(value = { "/shoppingCartCustomer" }, method = RequestMethod.POST)
    public String shoppingCartCustomerSave(HttpServletRequest request, //
            Model model, //
            @ModelAttribute("customerForm") @Validated CustomerInfo customerForm, //
            BindingResult result, //
            final RedirectAttributes redirectAttributes) {
  
        // If has Errors.
        if (result.hasErrors()) {
            customerForm.setValid(false);
            // Forward to reenter customer info.
            return "shoppingCartCustomer";
        }
 
        customerForm.setValid(true);
        CartInfo cartInfo = Utils.getCartInSession(request);
 
        cartInfo.setCustomerInfo(customerForm);
 
        // Redirect to Confirmation page.
        return "redirect:/shoppingCartConfirmation";
    }
 
    // GET: Review Cart to confirm.
    @RequestMapping(value = { "/shoppingCartConfirmation" }, method = RequestMethod.GET)
    public String shoppingCartConfirmationReview(HttpServletRequest request, Model model) {
        CartInfo cartInfo = Utils.getCartInSession(request);
 
        // Cart have no products.
        if (cartInfo.isEmpty()) {
            // Redirect to shoppingCart page.
            return "redirect:/shoppingCart";
        } else if (!cartInfo.isValidCustomer()) {
            // Enter customer info.
            return "redirect:/shoppingCartCustomer";
        }
 
        return "shoppingCartConfirmation";
    }
 
    // POST: Send Cart (Save).
    @RequestMapping(value = { "/shoppingCartConfirmation" }, method = RequestMethod.POST)
    // Avoid UnexpectedRollbackException (See more explanations)
    @Transactional(propagation = Propagation.NEVER)
    public String shoppingCartConfirmationSave(HttpServletRequest request, Model model) {
        CartInfo cartInfo = Utils.getCartInSession(request);
 
        // Cart have no products.
        if (cartInfo.isEmpty()) {
            // Redirect to shoppingCart page.
            return "redirect:/shoppingCart";
        } else if (!cartInfo.isValidCustomer()) {
            // Enter customer info.
            return "redirect:/shoppingCartCustomer";
        }
        try {
            orderDAO.saveOrder(cartInfo);
        } catch (Exception e) {
            // Need: Propagation.NEVER?
            return "shoppingCartConfirmation";
        }
        // Remove Cart In Session.
        Utils.removeCartInSession(request);
         
        // Store Last ordered cart to Session.
        Utils.storeLastOrderedCartInSession(request, cartInfo);
 
        // Redirect to successful page.
        return "redirect:/shoppingCartFinalize";
    }
 
    @RequestMapping(value = { "/shoppingCartFinalize" }, method = RequestMethod.GET)
    public String shoppingCartFinalize(HttpServletRequest request, Model model) {
 
        CartInfo lastOrderedCart = Utils.getLastOrderedCartInSession(request);
 
        if (lastOrderedCart == null) {
            return "redirect:/shoppingCart";
        }
 
        return "shoppingCartFinalize";
    }
 
    @RequestMapping(value = { "/productImage" }, method = RequestMethod.GET)
    public void productImage(HttpServletRequest request, HttpServletResponse response, Model model,
            @RequestParam("code") String code) throws IOException {
        Product product = null;
        if (code != null) {
            product = this.productDAO.findProduct(code);
        }
        if (product != null && product.getImage() != null) {
            response.setContentType("image/jpeg, image/jpg, image/png, image/gif");
            response.getOutputStream().write(product.getImage());
        }
        response.getOutputStream().close();
    }
     
}