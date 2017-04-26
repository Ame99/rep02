define(['jquery', "template", "components",  "jqueryValidate", "manageCommon"], function(jquery, template, components, validator, manageCommon) {
    getModules();
    function getModules() {
        var flag1 = false;
        var flag2 = false;
        var flag3 = false;
        var flag4 = false;
        var flag5 = false;
        var flag6 = false;
        //$.ajax({
        //    url: apiUrl + "/admin/module/module/queryModules",
        //    type: 'GET',
        //    xhrFields: {
        //        withCredentials: true
        //    },
        //    crossDomain: true,
        //}).done(function (msg) {
        components.getMsg(apiUrl + "/admin/module/module/queryModules").done(function (msg) {
            if (msg.res == 1) {
                var objList = msg.obj;
                for (var i = 0; i < objList.length; i++) {
                    var module = objList[i];
                    var id = module.moduleId;
                    var pid = module.parentId;
                    if (id == 7) {
                        $("#goodsList").css("display", "block");
                        flag1 = true;
                    }
                    if (id == 8) {
                        $("#goodsOrder").css("display", "block");
                        flag1 = true;
                    }
                    if (id == 9) {
                        $("#goodsCatory").css("display", "block");
                        flag1 = true;
                    }
                    if (id == 10) {
                        $("#memberManage").css("display", "block");
                        flag2 = true;
                    }
                    if (id == 11) {
                        $("#messageManage").css("display", "block");
                        flag2 = true;
                    }
                    if (id == 12) {
                        $("#articleManage").css("display", "block");
                        flag3 = true;
                    }
                    if (id == 13) {
                        $("#adManage").css("display", "block");
                        flag4 = true;
                    }
                    if (id == 14) {
                        $("#goodsReport").css("display", "block");
                        flag5 = true;
                    }
                    if (id == 15) {
                        $("#orderReport").css("display", "block");
                        flag5 = true;
                    }
                    if (id == 16) {
                        $("#adminManage").css("display", "block");
                        flag6 = true;
                    }
                    if (id == 17) {
                        $("#roleManage").css("display", "block");
                        flag6 = true;
                    }
                    if (flag1) {
                        $("#div1").css("display", "block");
                    }
                    if (flag2) {
                        $("#div2").css("display", "block");
                    }
                    if (flag3) {
                        $("#div3").css("display", "block");
                    }
                    if (flag4) {
                        $("#div4").css("display", "block");
                    }
                    if (flag5) {
                        $("#div5").css("display", "block");
                    }
                    if (flag6) {
                        $("#div6").css("display", "block");
                    }
                    if (flag1 || flag2 || flag3 && flag4 || flag5 || flag6) {
                        $('.container-wrap').css('display', 'block')
                    }
                }
            }
            //location.href = "/page/manage_login.html";
        });
    }

    var adid= components.GetQueryString("id");
    var submitUrl = apiUrl + "/admin/role/role/grantModules";
    var adminName = "";
    getData(adid);
    function getData(id) {
        var url = apiUrl + "/admin/role/role/getRoleInfo?roleId=" +id;
        components.getMsg(url).done(function(msg) {
            var res = msg.res;
            if (res == 1) {
                var html = template('div-box-tpl', msg);
                document.getElementById('div-box').innerHTML = html;
          }
        });
        url = apiUrl + "/admin/module/module/queryAllValidModule?roleId="+adid;
        components.getMsg(url).done(function(msg2) {
            var res = msg2.res;
            if (res == 1) {
                var obj=msg2.obj;
                for(var i=0;i<obj.length;i++){
                    var module=obj[i];
                    if(module.parentId==0) {
                    var  option='<div style="width: 13%; float: left;  margin: 0 0 0 3%;" id="module_'+module.moduleId+'">' +
                        '<h4 style="background: grey;text-align:center;color: white;height: 40px;">' +module.name
                        '</h4></div>';
                        $("#div-module").append(option);
                    }else {
                        var option='<ul><li><input  style="float:left;margin:5% 10% 0 0 ;heith" value="'+module.moduleId+'" name="moduleGroups" type="checkbox" ';
                        if(module.isOwnered==1){
                            option +='checked';
                        }
                        option +='><a>'+module.name+'&nbsp;&nbsp;&nbsp;</a></li></ul>'

                        $("#module_"+module.parentId).append(option);
                    }


                }

            }
        });
    }
    
    Validate();
    function Validate() {
        $("#form-box").validate({
            submitHandler: function(form) {
                var moduleCheckBox = document.getElementsByName("moduleGroups");
                var moduleIds = "";
                for ( var i = 0; i < moduleCheckBox.length; i++) {
                    if (moduleCheckBox[i].checked) {
                        if (moduleIds.length != 0) {
                            moduleIds = moduleIds + ",";
                        }
                        moduleIds = moduleIds + (moduleCheckBox[i].value);
                    }
                 }
                var data = {
                    "roleId": adid,
                    "moduleIds": moduleIds
                }
                 components.getMsg(submitUrl, data, "post").done(function(msg){
                 if (msg.res == 1) {
                     components.Alert("success", "权限分配成功");
                     setTimeout(function() {
                         window.history.go(-1);
                     }, 2000);
                 }else{
                       components.Alert("success", "失败");
                 }
                 });

            }
        });
    }

});
