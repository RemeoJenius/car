package com.jenius.recommend.car.api;
/**
 * Jenius
 * Created in 2018/4/7 下午5:25
 */

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

/**
 * @program: car
 *
 * @description:
 *
 * @author: jenius
 *
 * @create: 2018-04-07 17:25
 **/
@Configuration
@EnableSwagger2
public class Swagger2Config {
    @Bean
    public Docket userApi() {
        return new Docket(DocumentationType.SWAGGER_2).groupName("api测试").apiInfo(apiInfo()).select()
                .apis(RequestHandlerSelectors.basePackage("com.jenius.recommend.car.controller")).paths(PathSelectors.any()).build();
    }
    // 预览地址:swagger-ui.html
    private ApiInfo apiInfo() {
        return new ApiInfoBuilder().title("基于机器学习汽车推荐").termsOfServiceUrl("https://blog.liyongjun.com")
                .contact(new Contact("毕业设计 ", "https://blog.liyongjun.com/", "164197625@qq.com")).version("1.0").build();
    }



}
