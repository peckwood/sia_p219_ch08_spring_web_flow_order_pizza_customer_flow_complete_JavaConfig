package pizza.spring;

import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;

@Configuration
@Import({WebFlowConfig.class})
public class RootConfig {
	
}
