package springmvc.web;

import org.springframework.web.servlet.mvc.SimpleFormController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import springmvc.service.ProductManager;
import springmvc.service.PriceIncrease;


@SuppressWarnings("deprecation")
public class PriceIncreaseFormController extends SimpleFormController {
	
	protected final Log logger = LogFactory.getLog(getClass());
	private ProductManager productManager;

	/** this method set parameters of the command object before the form is rendered */
	protected Object formBackingObject(HttpServletRequest request)throws ServletException {
		PriceIncrease priceIncrease = new PriceIncrease();
		priceIncrease.setPercentage(20);
	  return priceIncrease;
	}	
	
	public ModelAndView onSubmit(Object command) throws ServletException {
		int increase = ((PriceIncrease) command).getPercentage();
		logger.info("Increasing prices by " + increase + "%.");
		productManager.increasePrice(increase);
		logger.info("returning from PriceIncreaseForm view to " + getSuccessView());
	  return new ModelAndView(new RedirectView(getSuccessView()));
	}

	public void setProductManager(ProductManager productManager) {
		this.productManager = productManager;
	}

	public ProductManager getProductManager() {
		return productManager;
	}
}
