package com.jenius.recommend.car.dataobject;

import lombok.Data;
import org.hibernate.annotations.DynamicUpdate;
import javax.persistence.Id;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import java.math.BigDecimal;
import java.util.Date;

/**
 * Jenius
 * Created in 2018/2/13 上午9:15
 */
@Data
@Entity
@DynamicUpdate
public class CarInfo {

    @Id
    @GeneratedValue
    private Integer carId;

    /** 名字. */
    private String carName;

    /** 用户评分. */
    private BigDecimal carRating;

    /** 级别. */
    private String carLevel;

    /** 车身结构. */
    private String carStructure;

    /** 小图. */
    private String carIcon;




    public static class Builder {
        // Required parameters
        private String carName;

        // Optional parameters - initialized to default values
        private Integer carId;
        /** 用户评分. */
        private BigDecimal carRating;

        /** 级别. */
        private String carLevel;

        /** 车身结构. */
        private String carStructure;

        /** 小图. */
        private String carIcon;


        /** 创建时间. */
        private Date createTime;

        /** 修改时间. */
        private Date updateTime;

        public Builder(String carName) {
            this.carName = carName;
        }

        public Builder carId(Integer val) {
            carId = val;
            return this;
        }
        public Builder carRating(BigDecimal val) {
            carRating = val;
            return this;
        }
        public Builder carLevel(String val) {
            carLevel = val;
            return this;
        }
        public Builder carStructure(String val) {
            carStructure = val;
            return this;
        }
        public Builder carIcon(String val) {
            carIcon = val;
            return this;
        }

        public CarInfo build() {
            return new CarInfo(this);
        }
    }

    private CarInfo(Builder builder) {
        carId = builder.carId;
        carName = builder.carName;
        carRating = builder.carRating;
        carLevel = builder.carLevel;
        carStructure = builder.carStructure;
        carIcon = builder.carIcon;

    }

    public CarInfo() {}
}
