package pizza.spring;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@EnableWebMvc
public class WebConfig extends WebMvcConfigurerAdapter {
	static{
		System.out.println("WebConfig loaded");
	}
	
	@Bean
	public ViewResolver viewResolver() {
		InternalResourceViewResolver resolver = new InternalResourceViewResolver();
		resolver.setPrefix("/WEB-INF/flows/");
		resolver.setSuffix(".jsp");
		return resolver;
	}

	// configure static content handling
	@Override
	public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
		// By calling enable() on the given
		// DefaultServletHandlerConfigurer, you’re asking DispatcherServlet to
		// forward
		// requests for static resources to the servlet container’s default
		// servlet and not to try to
		// handle them itself.
		configurer.enable();
	}
}
