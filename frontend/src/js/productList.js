define(['jquery', "components", "common", "template", "hammer", "updown"], function (jquery, components, common, template, hammer, updown) {
    components.addActiveClass(1);
    var addordeleteLock = false;//同一规格加减改操作锁，true表示锁住了
    var imgUrl = apiUrl;
    var firstPage = components.GetQueryString('categoryId');//获取首页传过来的商品类型
    //页数
    var page = 0;
    // 每页展示5个
    var size = 5;
    var panelset = $('#right').dropload({
        categoryId: '0',
        scrollArea: $('#right'),
        autoLoad: false,//自动加载
        domDown: {//上拉
            domClass: 'dropload-down',
            domRefresh: '<div class="dropload-refresh f15 "><i class="icon icon-20"></i>上拉加载更多</div>',
            domLoad: '<div class="dropload-load f15"><span class="weui-loading"></span>正在加载中...</div>',
            domNoData: '<div class="dropload-noData">没有更多数据了</div>'
        },
        domUp: {//下拉
            domClass: 'dropload-up',
            domRefresh: '<div class="dropload-refresh"><i class="icon icon-114"></i>上拉加载更多</div>',
            domUpdate: '<div class="dropload-load f15"><i class="icon icon-20"></i>释放更新...</div>',
            domLoad: '<div class="dropload-load f15"><span class="weui-loading"></span>正在加载中...</div>'
        },
        loadUpFn: function (me) {//刷新
            me.resetload();
            page = 0;
            me.unlock();
            me.noData(false);
            if (me.categoryId) {
                $.ajax({
                    type: 'GET',
                    url: apiUrl + "/front/goods/goods/getPageFrontVOByGoodsCategory",
                    data: "pageNo=" + page + "&pageSize=" + size + "&categoryId=" + encodeURIComponent(me.categoryId),
                    dataType: 'json',
                    xhrFields: {
                        withCredentials: true
                    },
                    crossDomain: true,
                    success: function (msg) {
                        var result = '';
                        var res = msg.res;
                        if (res === 1) {

                            //获取到商品
                            var goodsDataList = msg.obj.dataList;
                            msg = msg.obj;
                            msg.goodsDataList = goodsDataList;
                            //处理图片路径的问题
                            if (goodsDataList.length > 0) {
                                for (var pid = 0; pid < msg.goodsDataList.length; pid++) {
                                    if (msg.goodsDataList[pid].image !== "") {
                                        msg.goodsDataList[pid].image = msg.goodsDataList[pid].image.split(",");
                                        for (var j = 0; j < msg.goodsDataList[pid].image.length; j++) {
                                            msg.goodsDataList[pid].image[j] = imgUrl + msg.goodsDataList[pid].image[j];
                                        }
                                    }
                                    //处理起步价
                                    msg.goodsDataList[pid].vo_retailPrice = msg.goodsDataList[pid].vo_retailPrice / 100;
                                }
                                result = template('show_goods_list-tp1', msg);

                            }
                            else {
                                me.lock();
                                // 无数据
                                me.noData();
                                me.resetload();
                            }

                            $("#show_goods_list").html(result);
                            //绑定选择规格事件
                            for (var z in goodsDataList) {
                                var goods_id = new Object();
                                goods_id = "goodsId_" + goodsDataList[z].goodsId;
                                $("#" + goods_id).click(function () {
                                    showOrhideGoodspriceList(this.id.substring(8));
                                });

                                //隐藏的默认有的一个规格时的增删改增加绑定事件
                                $("#one_edit_" + goodsDataList[z].vo_priceId).val(goodsDataList[z].vo_shoppingCartNum);
                                $("#one_sub_" + goodsDataList[z].vo_priceId).click(function () {
                                    operateShoppingCart(2, this.id.substring(8));
                                });
                                $("#one_add_" + goodsDataList[z].vo_priceId).click(function () {
                                    operateShoppingCart(1, this.id.substring(8));
                                });
                                $("#one_edit_" + goodsDataList[z].vo_priceId).change(function () {
                                    operateShoppingCart(3, this.id.substring(9));
                                });
                                //商品只有一个规格时，直接显示加减号
                                if (goodsDataList[z].vo_countGoodsPrice == 1) {
                                    document.getElementById("goodsId_" + goodsDataList[z].goodsId).style.display = "none";
                                    if (goodsDataList[z].vo_shoppingCartNum == 0) {
                                        //购物车中数量为0，只显示加号
                                        document.getElementById("one_add_" + goodsDataList[z].vo_priceId).style.display = "block";
                                    } else {
                                        document.getElementById("one_sub_" + goodsDataList[z].vo_priceId).style.display = "block";
                                        document.getElementById("one_edit_" + goodsDataList[z].vo_priceId).style.display = "block";
                                        document.getElementById("one_add_" + goodsDataList[z].vo_priceId).style.display = "block";
                                    }
                                }
                            }
                            // 每次数据加载完，必须重置
                            me.resetload();
                            // 重置索引值，重新拼接more.json数据
                            page = 0;
                            // 解锁
                            me.unlock();
                            me.noData(false);

                        } else {

                            me.resetload();
                        }

                    },
                    error: function (xhr, type) {
                        me.resetload();
                        // 即使加载出错，也得重置

                    }
                });
            } else {
                me.lock();
                // 无数据
                me.noData();
                me.resetload();
            }

        },
        loadDownFn: function (me) {//加载更多

            if (me.categoryId) {
                page++;
                window.history.pushState(null, document.title, window.location.href);
                var result = '';
                $.ajax({
                    type: 'GET',
                    url: apiUrl + "/front/goods/goods/getPageFrontVOByGoodsCategory",
                    data: "pageNo=" + page + "&pageSize=" + size + "&categoryId=" + encodeURIComponent(me.categoryId),
                    dataType: 'json',
                    xhrFields: {
                        withCredentials: true
                    },
                    crossDomain: true,
                    success: function (msg) {
                        var res = msg.res;
                        if (res !== 0) {
                            var goodsDataList = msg.obj.dataList;
                            msg = msg.obj;
                            msg.goodsDataList = goodsDataList;
                            if (goodsDataList.length > 0) {
                                for (var pid = 0; pid < msg.goodsDataList.length; pid++) {
                                    if (msg.goodsDataList[pid].image !== "") {
                                        msg.goodsDataList[pid].image = msg.goodsDataList[pid].image.split(",");
                                        for (var j = 0; j < msg.goodsDataList[pid].image.length; j++) {
                                            msg.goodsDataList[pid].image[j] = imgUrl + msg.goodsDataList[pid].image[j];
                                        }
                                    }
                                    //处理起步价
                                    msg.goodsDataList[pid].vo_retailPrice = msg.goodsDataList[pid].vo_retailPrice / 100;
                                }

                            }
                            else {
                                me.resetload();
                                me.lock();
                                me.noData();
                            }

                        }
                        else {
                            me.resetload();
                            me.lock();
                            me.noData();
                        }
                        result = template('show_goods_list-tp1', msg);
                        $('#show_goods_list').append(result);
                        for (var z in goodsDataList) {

                            var goods_id = '';
                            goods_id = "goodsId_" + goodsDataList[z].goodsId;
                            $("#" + goods_id).click(function () {

                                showOrhideGoodspriceList(this.id.substring(8));
                            });

                            //隐藏的默认有的一个规格时的增删改增加绑定事件
                            $("#one_edit_" + goodsDataList[z].vo_priceId).val(goodsDataList[z].vo_shoppingCartNum);
                            $("#one_sub_" + goodsDataList[z].vo_priceId).click(function () {
                                operateShoppingCart(2, this.id.substring(8));
                            });
                            $("#one_add_" + goodsDataList[z].vo_priceId).click(function () {
                                operateShoppingCart(1, this.id.substring(8));
                            });
                            $("#one_edit_" + goodsDataList[z].vo_priceId).change(function () {
                                operateShoppingCart(3, this.id.substring(9));
                            });
                            //商品只有一个规格时，直接显示加减号
                            if (goodsDataList[z].vo_countGoodsPrice == 1) {
                                document.getElementById("goodsId_" + goodsDataList[z].goodsId).style.display = "none";
                                if (goodsDataList[z].vo_shoppingCartNum == 0) {
                                    //购物车中数量为0，只显示加号
                                    document.getElementById("one_add_" + goodsDataList[z].vo_priceId).style.display = "block";
                                } else {
                                    document.getElementById("one_sub_" + goodsDataList[z].vo_priceId).style.display = "block";
                                    document.getElementById("one_edit_" + goodsDataList[z].vo_priceId).style.display = "block";
                                    document.getElementById("one_add_" + goodsDataList[z].vo_priceId).style.display = "block";
                                }
                            }
                        }

                        // 每次数据加载完，必须重置
                        me.resetload();

                    },
                    // 为了测试，延迟1秒加载


                    error: function (xhr, type) {
                        // 即使加载出错，也得重置
                        me.resetload();
                    }
                });

            } else {
                me.lock();
                // 无数据
                me.noData();
                me.resetload();
            }

        }
    });
    getAllNormalFirstLevelCategory(firstPage);
    //获取一次分类列表
    function getAllNormalFirstLevelCategory(showCategoryId) {
        var suburl = apiUrl + "/front/productCategory/productCategory/getAllNormalFirstLevelCategory";
        components.getMsg(suburl).done(function (msg) {
            var res = msg.res;
            if (res == 1) {
                //获取到一次分类
                var firstCategoryDataList = msg.obj;
                msg.firstCategoryDataList = firstCategoryDataList;
                if (firstCategoryDataList !== undefined && firstCategoryDataList !== null && firstCategoryDataList.length !== 0) {
                    var html = template('show_first_category-tpl', msg);
                    $("#show_first_category").html(html);

                    //侧边栏上下滑动
                    /*  (function (len) {
                     var ul = $("#show_first_category"), transY, hammertime = new Hammer($("#show_first_category")[0], {
                     domEvents: true
                     });
                     hammertime.get('pan').set({direction: Hammer.DIRECTION_ALL});
                     var ulh = $('#show_first_category').height();
                     var itemhei = parseInt(len * 40, 10);
                     $("#show_first_category").on("panstart", function (e) {

                     transY = parseInt(ul.css('transform').replace(/[^0-9\-,]/g, '').split(',')[5], 10);
                     });
                     $("#show_first_category").on("panup", function (e) {
                     var delta = transY + e.originalEvent.gesture.deltaY;
                     var ty = ulh - itemhei;
                     if ((delta - ty) >= 0) {
                     ul.css('transform', 'translateY(' + delta + 'px)')
                     }
                     });
                     $("#show_first_category").on("pandown", function (e) {
                     var delta = transY + e.originalEvent.gesture.deltaY;
                     if (parseInt(delta) <= 0) {
                     ul.css('transform', 'translateY(' + delta + 'px)')
                     }
                     });
                     })(firstCategoryDataList.length);*/
                    //绑定事件
                    $('#show_first_category').on('click', 'li[data-type]', function () {

                        querySecondCategoryListByFirstCategoryId($(this), $(this).attr('data-type'));

                    });
                    //获取要显示点击的分类
                    if (!showCategoryId) {
                        showCategoryId = firstCategoryDataList[0].categoryId;
                        querySecondCategoryListByFirstCategoryId($('#show_first_category li:eq(0)'), showCategoryId);
                    }


                } else {
                    alert("没有一级分类！");
                }
            } else {
                alert("获取一级分类失败！");
            }
        });
    }

    //获取二次分类列表
    function querySecondCategoryListByFirstCategoryId(item, categoryId) {
        //设置一级分类选中效果
        item.siblings().removeClass('active');
        item.addClass('active');
        $('#right').scrollTop(0);
        $("#show_second_category").empty();
        var suburl = apiUrl + "/front/productCategory/productCategory/querySecondCategoryListByFirstCategoryId?categoryId=" + categoryId;
        components.getMsg(suburl).done(function (msg) {
            var res = msg.res;
            if (res === 1) {
                //获取到二次分类
                var secondCategoryDataList = msg.obj;
                msg.secondCategoryDataList = secondCategoryDataList;
                if (!!secondCategoryDataList && secondCategoryDataList.length > 0) {
                    var alltype = {
                        "categoryId": categoryId,
                        "parentId": categoryId,
                        "categoryName": "全部",
                        "image": "",
                        "state": 1,
                        "simpleDescribe": "全部"
                    };
                    secondCategoryDataList.unshift(alltype);
                    var html = template('show_second_category-tpl', msg);
                    $("#show_second_category").html(html);
                    $("#show_second_category li[data-type]").click(function () {

                        getPageFrontByGoodsCategory($(this), $(this).attr('data-type'));
                    });
                    getPageFrontByGoodsCategory($('#show_second_category li:eq(0)'), $('#show_second_category li:eq(0)').attr('data-type'))
                } else {
                    getPageFrontByGoodsCategory();
                }
            } else {
                alert("获取二级分类失败！");
            }
        });
    }

    //获取商品
    function getPageFrontByGoodsCategory(item, categoryId) {
        //设置二级分类选中效果
        $('#show_goods_list').empty();
        if (!!item) {
            item.siblings().removeClass('active');
            item.addClass('active');

            tempcategory = categoryId;
            panelset.categoryId = categoryId;
            panelset.opts.loadUpFn(panelset);
        }
        else {
            panelset.categoryId = false;
            panelset.opts.loadUpFn(panelset);
        }
    }

    //获取商品列表，并展示


    //商品规格增删改同一接口
    //商品只有一个规格时增删改数量	 operateType 1增 2删 3改; priceId 规格id;
    //source 表示操作来源 0表示只有一个规格时的增删改，1表示多个规格时的增删改
    function operateShoppingCartInterface(operateType, priceId, source) {
        if (addordeleteLock == true) {
            return;//当前其他操作未完成，锁住了
        }
        addordeleteLock = true;
        var edit_goodspriceId = "one_edit_" + priceId;
        var sub_goodspriceId = "one_sub_" + priceId;
        if (source == 1) {
            edit_goodspriceId = "edit_" + priceId;
            sub_goodspriceId = "sub_" + priceId;
        }
        var number = $("#" + edit_goodspriceId).val();
        number = parseInt(number);
        if (isNaN(number) || number < 0) {
            number = 0;
        }
        if (operateType == 1) {
            //加一操作
            number = parseInt(number) + parseInt(1);
        } else if (operateType == 2) {
            //减一操作
            number = parseInt(number) - parseInt(1);
        }
        if (number > 10000) {
            number = 10000;
        }
        var changeurl = apiUrl + "/front/shoppingcart/shoppingcart/editNumeberToShoppingCart?priceId=" + priceId + "&quantity=" + number;
        components.getMsg(changeurl).done(function (msg) {
            addordeleteLock = false;
            flushCurrentUserTotalPriceAndCategory();//因为商品购物车数量是所有拟购买的规格的总数;
            var res = msg.res;
            if (res == 1) {
                if (number == 0) {
                    //规格数减到0，隐藏
                    document.getElementById(sub_goodspriceId).style.display = "none";
                    document.getElementById(edit_goodspriceId).style.display = "none";
                } else {
                    document.getElementById(sub_goodspriceId).style.display = "block";
                    document.getElementById(edit_goodspriceId).style.display = "block";
                }
                $("#" + edit_goodspriceId).val(number);
            } else {
                alert("直接修改数量操作失败！");
            }
        });
    }


    //商品只有一个规格时增删改数量	 operateType 1增 2删 3改
    function operateShoppingCart(operateType, priceId) {
        operateShoppingCartInterface(operateType, priceId, 0);
    }

    //删除购物车中的一个规格数量
    function subOneToShoppingCart(priceId) {
        operateShoppingCartInterface(2, priceId, 1);
    }


    //增加一个规格
    function addOneToShoppingCart(priceId) {
        operateShoppingCartInterface(1, priceId, 1);
    }

    //直接填写一个规格数量
    function editNumeberToShoppingCart(priceId) {
        operateShoppingCartInterface(3, priceId, 1);
    }


    //获取产品规格
    function showOrhideGoodspriceList(goodsId) {
        console.log('11');
        var showId = "show_goods_price_list_" + goodsId;
        var display = document.getElementById(showId).style.display;
        if (display == 'none') {
            //展开
            var suburl = apiUrl + "/front/goodsPrice/goodsPrice/getGoodsPriceListByGoodsId?goodsId=" + goodsId;
            components.getMsg(suburl).done(function (msg) {
                var res = msg.res;
                if (res == 1) {
                    //获取到产品规格
                    var goodspriceDataList = msg.obj;
                    //处理显示的价格
                    for (var pi = 0; pi < goodspriceDataList.length; pi++) {
                        goodspriceDataList[pi].retailPrice = goodspriceDataList[pi].retailPrice / 100;
                    }

                    msg.goodspriceDataList = goodspriceDataList;
                    var html = template('show_goods_price_list-tpl', msg);
                    $("#" + showId).html(html);
                    var ggs_id = "goodsId_" + goodsId;
                    document.getElementById(ggs_id).innerHTML = "收起";
                    document.getElementById(showId).style.display = "";
                    //绑定增删改规格数量事件及初始化规格数量，规格数量取采购价
                    for (var m in goodspriceDataList) {
                        var goodsPrice_id = new Object();
                        goodsPrice_id = goodspriceDataList[m].priceId;
                        $("#edit_" + goodsPrice_id).val(goodspriceDataList[m].buyPrice);
                        $("#sub_" + goodsPrice_id).click(function () {
                            subOneToShoppingCart(this.id.substring(4));
                        });
                        $("#add_" + goodsPrice_id).click(function () {
                            addOneToShoppingCart(this.id.substring(4));
                        });
                        $("#edit_" + goodsPrice_id).change(function () {
                            editNumeberToShoppingCart(this.id.substring(5));
                        });
                        if (goodspriceDataList[m].buyPrice == 0) {
                            //规格数为0，则隐藏减号和数字
                            document.getElementById("sub_" + goodsPrice_id).style.display = "none";
                            document.getElementById("edit_" + goodsPrice_id).style.display = "none";
                        }
                    }
                    ;
                } else {
                    alert("获取产品规格失败！");
                }
            });
        } else {
            //收起
            document.getElementById(showId).style.display = "none";
            var ggs_id = "goodsId_" + goodsId;
            document.getElementById(ggs_id).innerHTML = "选择规格";
        }
    }

    //刷新当前用户的购物车总金额及种类数
    function flushCurrentUserTotalPriceAndCategory() {
        var flushurl = apiUrl + "/front/shoppingcart/shoppingcart/queryCurrentUserTotalPriceAndCategory";
        components.getMsg(flushurl).done(function (msg) {
            var res = msg.res;
            if (res == 1) {
                //查询总价和种类成功
                var totalpriceandcategory = msg.obj;
                document.getElementById("totalNumber").innerHTML = totalpriceandcategory.totalPrice / 100 * 1.00;
                document.getElementById("totalCategory").innerHTML = totalpriceandcategory.totalCategory;
                settleAccounts();
            }
            else {
                alert("获取总价失败！");
            }
        });
    }

    //计算起步价
    function settleAccounts() {
        var totalNumber = document.getElementById("totalNumber").innerHTML;
        var differencePrice = (totalNumber * 100 - settleAccountsPrice * 100) / 100;
        differencePrice = parseFloat(differencePrice.toFixed(2));
        if (parseInt(-differencePrice) === parseInt(settleAccountsPrice)) {
            document.getElementById("settle_accounts").innerHTML = "¥" + settleAccountsPrice + "起送";
            document.getElementById("settle_accounts").removeAttribute('href');
            // document.getElementById("settle_accounts").style.color = "#A9A9AA";
            document.getElementById("settle_accounts").style.backgroundColor = "#CCC";
            // document.getElementById("settle_accounts").style.fontSize ="16px";
        }
        else if (differencePrice >= 0) {
            document.getElementById("settle_accounts").innerHTML = "结算";
            document.getElementById("settle_accounts").style.backgroundColor = "#2CC17B";
            // document.getElementById("settle_accounts").style.color = "#fff";
            document.getElementById("settle_accounts").setAttribute('href', '/page/order_submit.html');
            // document.getElementById("settle_accounts").style.fontSize ="16px";

        } else {
            document.getElementById("settle_accounts").innerHTML = "还差¥" + (differencePrice * (-1)) + "起送";
            document.getElementById("settle_accounts").removeAttribute('href');
            // document.getElementById("settle_accounts").style.color = "#A9A9AA";
            document.getElementById("settle_accounts").style.backgroundColor = "#CCC";
            // document.getElementById("settle_accounts").style.fontSize ="16px";
        }
    }

    //搜索输入框绑定链接
    $('#searchText').on('click', function () {
        location.href = '/page/productSearch.html';
    });


    $("#shoppingCartDetail").on('click', function () {
        window.location.href = "/page/myShoppingCart.html";
    });


    var $goodsList = $("#show_goods_list");
    var $noRec = $('#noRec');
    var $cloading = $('#cloading');
    var tempcategory = -1;
    //获取商品列表，并展示,新方法 暂时不用，有问题
    var goodsList = {
        page: 0, //触发获取数据的数次(+1等于页码)
        size: 10, //每次触发取的记录条数
        isLoading: false, //列表是否加载中，避免重复触底加载
        url: apiUrl + "/front/goods/goods/getPageFrontVOByGoodsCategory", //数据api
        getMore: function (first, categoryId) {
            if (goodsList.isLoading) //取数过程中，先停止重复取数
                return;

            if (first) {
                goodsList.page = 1;
                $('#noRec').hide();
                $goodsList.html('');
            } else {
                goodsList.page += 1;
            }
            $('#cloading').show(); //显示加载框
            goodsList.isLoading = true;
            setTimeout(goodsList.d(goodsList.page, goodsList.size, categoryId), 1000); //模拟延迟取数据
        },

        //异步获取商品列表
        d: function (page, size, categoryId) {
            $.ajax({
                url: goodsList.url,
                data: "pageNo=" + page + "&pageSize=" + size + "&categoryId=" + encodeURIComponent(encodeURIComponent(categoryId)),
                type: 'GET',
                xhrFields: {
                    withCredentials: true
                },
                crossDomain: true,
                dataType: "json"
            }).done(function (msg) {
                var res = msg.res;
                if (res !== 0) {

                    //获取到商品
                    var goodsDataList = msg.obj.dataList;
                    msg = msg.obj;
                    msg.goodsDataList = goodsDataList;
                    //处理图片路径的问题
                    for (var pid = 0; pid < msg.goodsDataList.length; pid++) {
                        if (msg.goodsDataList[pid].image !== "") {
                            msg.goodsDataList[pid].image = msg.goodsDataList[pid].image.split(",");
                            for (var j = 0; j < msg.goodsDataList[pid].image.length; j++) {
                                msg.goodsDataList[pid].image[j] = imgUrl + msg.goodsDataList[pid].image[j];
                            }
                        }
                        //处理起步价
                        msg.goodsDataList[pid].vo_retailPrice = msg.goodsDataList[pid].vo_retailPrice / 100;
                    }
                    var html = template('show_goods_list-tp1', msg);
                    $("#show_goods_list").html(html);

                    if (goodsDataList && goodsDataList.length > 0) {
                        goodsList.isLoading = false;
                        $noRec.hide();
                    } else {
                        goodsList.isLoading = true;
                        $noRec.show();
                    }
                    if (goodsList.page > 1) {
                        $goodsList.append(html);
                    } else {
                        $goodsList.html(html);
                    }
                    $cloading.hide(); //隐藏加载框

                    //绑定选择规格事件
                    for (var z in goodsDataList) {
                        var goods_id = '';
                        goods_id = "goodsId_" + goodsDataList[z].goodsId;
                        $("#" + goods_id).click(function () {
                            showOrhideGoodspriceList(this.id.substring(8));
                        });

                        //隐藏的默认有的一个规格时的增删改增加绑定事件
                        $("#one_edit_" + goodsDataList[z].vo_priceId).val(goodsDataList[z].vo_shoppingCartNum);
                        $("#one_sub_" + goodsDataList[z].vo_priceId).click(function () {
                            operateShoppingCart(2, this.id.substring(8));
                        });
                        $("#one_add_" + goodsDataList[z].vo_priceId).click(function () {
                            operateShoppingCart(1, this.id.substring(8));
                        });
                        $("#one_edit_" + goodsDataList[z].vo_priceId).change(function () {
                            operateShoppingCart(3, this.id.substring(9));
                        });
                        //商品只有一个规格时，直接显示加减号
                        if (goodsDataList[z].vo_countGoodsPrice == 1) {
                            document.getElementById("goodsId_" + goodsDataList[z].goodsId).style.display = "none";
                            if (goodsDataList[z].vo_shoppingCartNum == 0) {
                                //购物车中数量为0，只显示加号
                                document.getElementById("one_add_" + goodsDataList[z].vo_priceId).style.display = "block";
                            } else {
                                document.getElementById("one_sub_" + goodsDataList[z].vo_priceId).style.display = "block";
                                document.getElementById("one_edit_" + goodsDataList[z].vo_priceId).style.display = "block";
                                document.getElementById("one_add_" + goodsDataList[z].vo_priceId).style.display = "block";
                            }
                        }
                    }


                } else {
                    $noRec.show();
                    $cloading.hide();
                }
                goodsList.isLoading = false;
            });
        }
    };


    flushCurrentUserTotalPriceAndCategory();


});
