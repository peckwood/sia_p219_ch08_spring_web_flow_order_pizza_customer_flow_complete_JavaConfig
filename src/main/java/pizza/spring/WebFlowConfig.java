package pizza.spring;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.webflow.config.AbstractFlowConfiguration;
import org.springframework.webflow.definition.registry.FlowDefinitionRegistry;
import org.springframework.webflow.engine.builder.support.FlowBuilderServices;
import org.springframework.webflow.executor.FlowExecutor;
import org.springframework.webflow.mvc.servlet.FlowHandlerAdapter;
import org.springframework.webflow.mvc.servlet.FlowHandlerMapping;

@Configuration
@ComponentScan({"pizza"})
public class WebFlowConfig extends AbstractFlowConfiguration {
	static{
		System.out.println("WebFlowConfig loaded");
	}
	
	@Autowired
	private WebConfig webMvcConfig;

	@Bean
	public FlowDefinitionRegistry flowRegistry() {
		return 
			getFlowDefinitionRegistryBuilder(flowBuilderServices())
			.setBasePath("/WEB-INF/flows")
			.addFlowLocationPattern("/**/*-flow.xml")
			.build();
	}
	
	@Bean
	public FlowExecutor flowExecutor(){
		return getFlowExecutorBuilder(flowRegistry()).build();
	}

	@Bean
	public FlowBuilderServices flowBuilderServices() {
		return getFlowBuilderServicesBuilder()
				.setDevelopmentMode(true)
				.build();
	}
	
	@Bean 
	@Autowired
	public FlowHandlerAdapter flowHandlerAdapter(FlowExecutor flowExecutor) {
	    FlowHandlerAdapter flowHandlerAdapter = new FlowHandlerAdapter();
	    flowHandlerAdapter.setFlowExecutor(flowExecutor);
	    return flowHandlerAdapter;
	}

	@Bean 
	@Autowired
	public FlowHandlerMapping flowHandlerMapping(FlowDefinitionRegistry flowDefinitionRegistry) {
	    FlowHandlerMapping flowHandlerMapping = new FlowHandlerMapping();
	    flowHandlerMapping.setFlowRegistry(flowDefinitionRegistry);
	    flowHandlerMapping.setOrder(0);
	    return flowHandlerMapping;
	}

}
