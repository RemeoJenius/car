<!DOCTYPE html>
<html style="height: 100%">

<head>
    <meta charset="utf-8">
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/echarts.min.js"></script>
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts-gl/echarts-gl.min.js"></script>
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts-stat/ecStat.min.js"></script>
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/extension/dataTool.min.js"></script>
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/china.js"></script>
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/world.js"></script>
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=ZUONbpqGBsYGXNIYHicvbAbM"></script>
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/extension/bmap.min.js"></script>
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/simplex.js"></script>
    <script src="https://cdn.bootcss.com/vue/1.0.0/vue.min.js"></script>
    <script src="https://cdn.bootcss.com/semantic-ui/2.3.1/semantic.min.js"></script>
</head>
    <body id="app" style="height: 100%; margin: 0">
        <#include "header.ftl">
        <section class="section-filter">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="text-center">
                            <h2 class="ui-title-block">Find Your Dream Car</h2>
                            <div class="ui-subtitle-block">Tempor incididunt labore dolore magna aliqua sed ipsum</div>
                            <div class="ui-decor"></div>
                        </div>
                    </div>
                </div>
            </div>

            <form class="b-filter">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="b-filter-type">
                                <div class="b-filter-type__item">
                                    <input v-on:click="msg = 'SUV'" class="b-filter-type__input" id="typePickup" name="type-car" type="radio" value="" />
                                    <label class="b-filter-type__label" for="typePickup"><i class="b-filter-type__icon flaticon-pick-up"></i><span class="b-filter-type__title">PICKUP</span>
                                        </label>
                                </div>
                                <div v-on:click="carForm.carStructure = 'SUV'" class="b-filter-type__item">
                                    <input class="b-filter-type__input" id="typeSuv" name="type-car" type="radio" value="" />
                                    <label class="b-filter-type__label" for="typeSuv"><i class="b-filter-type__icon flaticon-car-of-hatchback-model"></i><span class="b-filter-type__title">SUV</span>
                                        </label>
                                </div>
                                <div class="b-filter-type__item">
                                    <input class="b-filter-type__input" id="typeCoupe" name="type-car" type="radio" value="" checked="checked" />
                                    <label class="b-filter-type__label" for="typeCoupe"><i class="b-filter-type__icon flaticon-coupe-car"></i><span class="b-filter-type__title">coupe</span>
                                        </label>
                                </div>
                                <div class="b-filter-type__item">
                                    <input class="b-filter-type__input" id="typeConvertible" name="type-car" type="radio" value="" />
                                    <label class="b-filter-type__label" for="typeConvertible"><i class="b-filter-type__icon flaticon-cabrio-car"></i><span class="b-filter-type__title">CONVERTIBLE</span>
                                        </label>
                                </div>
                                <div class="b-filter-type__item">
                                    <input class="b-filter-type__input" id="typeSedan" name="type-car" type="radio" value="" />
                                    <label class="b-filter-type__label" for="typeSedan"><i class="b-filter-type__icon flaticon-sedan-car-model"></i><span class="b-filter-type__title">sedan</span>
                                        </label>
                                </div>
                                <div class="b-filter-type__item">
                                    <input class="b-filter-type__input" id="typeMinicar" name="type-car" type="radio" value="" />
                                    <label class="b-filter-type__label" for="typeMinicar"><i class="b-filter-type__icon flaticon-car-1"></i><span class="b-filter-type__title">MINICAR</span>
                                        </label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="b-filter__inner bg-grey">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-3 col-sm-6">
                                <select  v-model="carForm.carLevel" class="ui search dropdown">
                                    <option value="">选择汽车级别</option>
                                    <option v-for="level in carLevel" value="{{level}}"> {{level}}</option>
                                </select>
                            </div>
                            <div class="col-md-3 col-sm-6">
                                <select v-model="carForm.carEngine" class="ui search dropdown">
                                    <option value="">选择汽车发动机</option>
                                    <option v-for="engine in carEngine" value="{{engine}}">{{engine}}</option>
                                </select>
                            </div>
                            <div class="col-md-3 col-sm-6">
                                <select v-model="carForm.carTransmission" class="ui search dropdown">
                                    <option value="">选择汽车变速箱</option>
                                    <option v-for="transmission in carTransmission" value="{{transmission}}">{{transmission}}</option>
                                </select>
                            </div>
                            <div class="col-md-3 col-sm-6">
                                <select v-model="carForm.carName" class="ui search dropdown">
                                    <option value="">选择汽车名字</option>
                                    <option v-for="name in carName" value="{{name}}">{{name}}</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
            <form class="b-filter">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="b-filter-type">
                                <div class="b-filter-type__item">
                                    <input class="b-filter-type__input" id="typePickup2" name="type-car" type="radio" value="" />
                                    <label class="b-filter-type__label" for="typePickup2"><i class="b-filter-type__icon flaticon-pick-up"></i><span class="b-filter-type__title">PICKUP</span>
                                        </label>
                                </div>
                                <div v-on:click="carForm1.carStructure = 'SUV'" class="b-filter-type__item">
                                    <input class="b-filter-type__input" id="typeSuv2" name="type-car" type="radio" value="" />
                                    <label class="b-filter-type__label" for="typeSuv2"><i class="b-filter-type__icon flaticon-car-of-hatchback-model"></i><span class="b-filter-type__title">SUV</span>
                                        </label>
                                </div>
                                <div class="b-filter-type__item">
                                    <input class="b-filter-type__input" id="typeCoupe2" name="type-car" type="radio" value="" checked="checked" />
                                    <label class="b-filter-type__label" for="typeCoupe2"><i class="b-filter-type__icon flaticon-coupe-car"></i><span class="b-filter-type__title">coupe</span>
                                        </label>
                                </div>
                                <div class="b-filter-type__item">
                                    <input class="b-filter-type__input" id="typeConvertible2" name="type-car" type="radio" value="" />
                                    <label class="b-filter-type__label" for="typeConvertible2"><i class="b-filter-type__icon flaticon-cabrio-car"></i><span class="b-filter-type__title">CONVERTIBLE</span>
                                        </label>
                                </div>
                                <div class="b-filter-type__item">
                                    <input class="b-filter-type__input" id="typeSedan2" name="type-car" type="radio" value="" />
                                    <label class="b-filter-type__label" for="typeSedan2"><i class="b-filter-type__icon flaticon-sedan-car-model"></i><span class="b-filter-type__title">sedan</span>
                                        </label>
                                </div>
                                <div class="b-filter-type__item">
                                    <input class="b-filter-type__input" id="typeMinicar2" name="type-car" type="radio" value="" />
                                    <label class="b-filter-type__label" for="typeMinicar2"><i class="b-filter-type__icon flaticon-car-1"></i><span class="b-filter-type__title">MINICAR</span>
                                        </label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="b-filter__inner bg-grey">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-3 col-sm-6">
                                <select  v-model="carForm1.carLevel" class="ui search dropdown">
                                    <option value="">选择汽车级别</option>
                                    <option v-for="level in carLevel1" value="{{level}}"><span >{{level}}</span></option>
                                </select>
                            </div>
                            <div class="col-md-3 col-sm-6">
                                <select v-model="carForm1.carEngine" class="ui search dropdown">
                                    <option value="">选择汽车发动机</option>
                                    <option v-for="engine in carEngine1" value="{{engine}}">{{engine}}</option>
                                </select>
                            </div>
                            <div class="col-md-3 col-sm-6">
                                <select v-model="carForm1.carTransmission" class="ui search dropdown">
                                    <option value="">选择汽车变速箱</option>
                                    <option v-for="transmission in carTransmission1" value="{{transmission}}">{{transmission}}</option>
                                </select>
                            </div>
                            <div class="col-md-3 col-sm-6">
                                <select v-model="carForm1.carName" class="ui search dropdown">
                                    <option value="">选择汽车名字</option>
                                    <option v-for="name in carName1" value="{{name}}">{{name}}</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
            <!-- end .b-filter-->
        </section>
        <div id="container" style="height: 50%;width: 100%"></div>
            <script type="text/javascript">
                var dom = document.getElementById("container");
                var myChart = echarts.init(dom);
                var app = {};
                // 获取价格范围
                // $("#slider-snap-value-lower").text();

                var vm = new Vue({
                    el: '#app',
                    data: {
                        opt: null,
                        carForm: {
                            carName: "",
                            carLevel: "",
                            carStructure: "",
                            carTransmission: "",
                            carEngine: "",
                            minPrice: "",
                            maxPrice: ""
                        },
                        carForm1: {
                            carName: "",
                            carLevel: "",
                            carStructure: "",
                            carTransmission: "",
                            carEngine: "",
                            minPrice: "",
                            maxPrice: ""
                        },
                        carName: null,
                        carLevel: null,
                        carStructure: null,
                        carTransmission: null,
                        carEngine: null,
                        carName1: null,
                        carLevel1: null,
                        carStructure1: null,
                        carTransmission1: null,
                        carEngine1: null,
                    },
                    methods: {
                        getCarInfo: function() {
                            var self = this;
                            var carName = new Set();
                            var carLevel = new Set();
                            var carTransmission = new Set();
                            var carEngine = new Set();
                            var firstCar = {};
                            $.ajax({
                                url: "/car/recommend/comparing",
                                type: "get",
                                dataType: "json",
                                async:false,
                                data: {
                                    carName: self.carForm.carName,
                                    carLevel: self.carForm.carLevel,
                                    carStructure: self.carForm.carStructure,
                                    carTransmission: self.carForm.carTransmission,
                                    carEngine: self.carForm.carEngine,
                                    minPrice: self.carForm.minPrice,
                                    maxPrice: self.carForm.maxPrice
                                },
                            }).done(function(result) {
                                //不能在这个里面直接返回，直接反回是获取不到数据的
                                if (result.data.length == 1) {
                                    firstCar = result.data[0];
                                }
                                // firstCar = result.data[0];
                                result.data.forEach(function(car) {
                                    carName.add(car.carName);
                                    carLevel.add(car.carLevel);
                                    carTransmission.add(car.carTransmission);
                                    carEngine.add(car.carEngine);
                                })
                                self.carName = Array.from(carName);
                                self.carLevel = Array.from(carLevel);
                                self.carTransmission = Array.from(carTransmission);
                                self.carEngine = Array.from(carEngine);
                            });
                            return firstCar;
                        },
                        getCarInfo1: function() {
                            var self = this;
                            var carName = new Set();
                            var carLevel = new Set();
                            var carTransmission = new Set();
                            var carEngine = new Set();
                            var secondCar = {};
                            $.ajax({
                                url: "/car/recommend/comparing",
                                type: "get",
                                dataType: "json",
                                async:false,
                                data: {
                                    carName: self.carForm1.carName,
                                    carLevel: self.carForm1.carLevel,
                                    carStructure: self.carForm1.carStructure,
                                    carTransmission: self.carForm1.carTransmission,
                                    carEngine: self.carForm1.carEngine,
                                    minPrice: self.carForm1.minPrice,
                                    maxPrice: self.carForm1.maxPrice
                                },
                            }).done(function(result) {
                                //不能在这个里面直接返回，直接反回是获取不到数据的
                                console.log(result);
                                if (result.data.length == 1) {
                                    secondCar = result.data[0];
                                }
                                // secondCar = result.data[0];
                                result.data.forEach(function(car) {
                                    carName.add(car.carName);
                                    carLevel.add(car.carLevel);
                                    carTransmission.add(car.carTransmission);
                                    carEngine.add(car.carEngine);
                                })
                                self.carName1 = Array.from(carName);
                                self.carLevel1 = Array.from(carLevel);
                                self.carTransmission1 = Array.from(carTransmission);
                                self.carEngine1 = Array.from(carEngine);
                            });
                            return secondCar;
                        }

                    },
                    ready: function() {
                    }
                });
                var firstCar = vm.getCarInfo();
                var secondCar = vm.getCarInfo1();

                vm.$watch('carForm.carName', function(val) {
                    firstCar = this.getCarInfo();
                    setOption(firstCar,secondCar);
                })
                vm.$watch('carForm.carStructure', function(val) {
                    firstCar = this.getCarInfo();
                    setOption(firstCar,secondCar);
                })
                vm.$watch('carForm.carLevel', function(val) {
                    firstCar = this.getCarInfo();
                    setOption(firstCar,secondCar);
                })
                vm.$watch('carForm.carTransmission', function(val) {
                    firstCar = this.getCarInfo();
                    setOption(firstCar,secondCar);
                })
                vm.$watch('carForm.carEngine', function(val) {
                    firstCar = this.getCarInfo();
                    setOption(firstCar,secondCar);
                })
                vm.$watch('carForm.minPrice', function(val) {
                    firstCar = this.getCarInfo();
                    setOption(firstCar,secondCar);
                })
                vm.$watch('carForm.maxPrice', function(val) {
                    firstCar = this.getCarInfo();
                    setOption(firstCar,secondCar);
                })
                vm.$watch('carForm1.carName', function(val) {
                    secondCar = this.getCarInfo1();
                    setOption(firstCar,secondCar);
                })
                vm.$watch('carForm1.carStructure', function(val) {
                    secondCar = this.getCarInfo1();
                    setOption(firstCar,secondCar);
                })
                vm.$watch('carForm1.carLevel', function(val) {
                    secondCar = this.getCarInfo1();
                    setOption(firstCar,secondCar);
                })
                vm.$watch('carForm1.carTransmission', function(val) {
                    secondCar = this.getCarInfo1();
                    setOption(firstCar,secondCar);
                })
                vm.$watch('carForm1.carEngine', function(val) {
                    secondCar = this.getCarInfo1();
                    setOption(firstCar,secondCar);
                })
                vm.$watch('carForm1.minPrice', function(val) {
                    secondCar = this.getCarInfo1();
                    setOption(firstCar,secondCar);
                })
                vm.$watch('carForm1.maxPrice', function(val) {
                    secondCar = this.getCarInfo1();
                    setOption(firstCar,secondCar);
                })

                function setOption(firstCar,secondCar) {
                    option = {
                        title: {
                            text: '汽车参数对比',
                            subtext: '数据来自网络'
                        },
                        tooltip: {
                            trigger: 'axis',
                            axisPointer: {
                                type: 'shadow'
                            }
                        },
                        legend: {
                            // 汽车名字
                            data: [firstCar.carName, secondCar.carName]
                        },
                        grid: {
                            left: '3%',
                            right: '4%',
                            bottom: '3%',
                            containLabel: true
                        },
                        xAxis: {
                            type: 'value',
                            boundaryGap: [0, 0.01]
                        },
                        yAxis: {
                            type: 'category',
                            data: ['价格(万)', '用户评分(最高是5)', '发动机(T)', '满意度(最高是10)']
                        },
                        series: [{
                                name: firstCar.carName,
                                type: 'bar',
                                data: [firstCar.carPrice, firstCar.carRating, firstCar.carEngine, 8]
                            },
                            {
                                name: secondCar.carName,
                                type: 'bar',
                                data: [secondCar.carPrice, secondCar.carRating, secondCar.carEngine, 7]
                            }
                        ]
                    };
                    if (option && typeof option === "object") {
                        myChart.setOption(option, true);
                    }
                    // return option;
                }
                app.title = '汽车对比 - 条形图';

                function test(option) {
                    if (option && typeof option === "object") {
                        myChart.setOption(option, true);
                    }
                }
            </script>
    </body>

</html>
